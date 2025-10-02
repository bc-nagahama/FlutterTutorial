import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_application_2/data/datasources/api/login_datasource.dart';
import 'package:flutter_application_2/data/interceptors/zap_interceptor.dart';
import 'package:flutter_application_2/data/repositories/login_repository_impl.dart';
import 'package:flutter_application_2/domain/repositories/login_repository.dart';


class SignatureService {
  static final SignatureService _instance = SignatureService._internal();
  SignatureService._internal();
  static SignatureService get instance => _instance;

  String hmacKey = '';

  LoginRepository loginRepository = LoginRepositoryImpl(
    LoginDatasource(
      Dio()..interceptors.add(ZapInterceptor()),
      baseUrl: 'https://zap-customer-st.benesse.ne.jp',
    )
  );

  ///
  /// 初期化処置
  ///
  void initialize(LoginRepository loginRepository) {
    this.loginRepository = loginRepository;
  }

  ///
  /// HMAC鍵を取得
  ///
  Future<void> fetchHmacKey() async {
    hmacKey = await loginRepository.getAuthKey();
  }

  ///
  /// nonce 生成（UUID v4 形式）
  ///
  String generateNonce() {
    final random = Random.secure();
    final bytes = List<int>.generate(16, (_) => random.nextInt(256));

    // UUID v4 format: xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx
    // Set version (4) and variant bits
    bytes[6] = (bytes[6] & 0x0f) | 0x40; // version 4
    bytes[8] = (bytes[8] & 0x3f) | 0x80; // variant 10

    final hex = bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
    return '${hex.substring(0, 8)}-${hex.substring(8, 12)}-${hex.substring(12, 16)}-${hex.substring(16, 20)}-${hex.substring(20, 32)}';
  }

  ///
  /// 現在のUnixタイムスタンプを文字列で取得
  ///
  String getCurrentTimestamp() {
    return (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();
  }

  ///
  /// HMAC-SHA256 署名を計算
  /// Microsoft Learn パターンに準拠: method + "\n" + path + "\n" + timestamp + "\n" + body
  ///
  String calculateHmacSignature({
    required String method,
    required String path,
    required String timestamp,
    String body = "",
  }) {
    final stringToSign = '$method\n$path\n$timestamp\n$body';

    // HMAC鍵をUTF-8エンコードして使用
    final keyBytes = utf8.encode(hmacKey);
    final messageBytes = utf8.encode(stringToSign);

    final hmac = Hmac(sha256, keyBytes);
    final digest = hmac.convert(messageBytes);

    return base64Encode(digest.bytes);
  }

  ///
  /// 認証ヘッダーを生成
  ///
  Map<String, String> generateAuthHeaders({
    required String method,
    required String path,
    String body = "",
  }) {
    final nonce = generateNonce();
    final timestamp = getCurrentTimestamp();
    final signature = calculateHmacSignature(
      method: method,
      path: path,
      timestamp: timestamp,
      body: body,
    );

    return {
      'Authorization': 'HMAC $signature',
      'X-Nonce': nonce,
      'X-Timestamp': timestamp,
      'Content-Type': 'application/json',
    };
  }
}