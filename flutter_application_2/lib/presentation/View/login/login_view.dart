import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/view/login/login_view_model.dart';
import 'package:flutter_application_2/presentation/view/home/home_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoginView extends ConsumerWidget{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final notifier = ref.read(loginViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('ログインページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'ログインID',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) => notifier.setLoginId(value),
            ),
            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(
                labelText: 'パスワード',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onChanged: (value) => notifier.setPassword(value),
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              child: Text('ログイン'),
              onPressed: () async{
                await notifier.login(authGroup: 'BYOD_CHU');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeView()),
                );
              }, 
            ),
          ],
        ),
      ),
    );
  }
}