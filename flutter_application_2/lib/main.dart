// import 'dart:async';
import 'package:flutter_application_2/data/providers/login_repository_provider.dart';
import 'package:flutter_application_2/domain/services/signature_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'presentation/view/login/login_view.dart';

void main() {
  final container = ProviderContainer();
  final loginRepository = container.read(loginRepositoryProvider);

  SignatureService.instance.initialize(loginRepository);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: LoginView(),
    );
  }
}

