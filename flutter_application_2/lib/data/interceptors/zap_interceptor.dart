import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_2/domain/services/signature_service.dart';

class ZapInterceptor extends Interceptor{

  ZapInterceptor(this.dio);

  Dio dio;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Web環境でcredentialsを有効化
    if (kIsWeb) {
      options.extra['withCredentials'] = true;
    }

    // キャッシュを利用しないようにする
    options.headers.addAll({
      'Cache-Control': 'no-store, no-cache, must-revalidate',
      'Pragma': 'no-cache',
    });

    // HMAC署名を生成するために、クエリパラメータを含めたパスを作成する
    String path = options.path;
    if (options.queryParameters.isNotEmpty) {
      path +=
          '?${options.queryParameters.entries.map((e) => '${e.key}=${e.value}').join('&')}';
    }

    // HMAC署名を付与する
    options.headers.addAll(
      SignatureService.instance.generateAuthHeaders(
        method: options.method,
        path: path,
        body: options.data != null ? jsonEncode(options.data) : '',
      ),
    );

    handler.next(options);
  }
}