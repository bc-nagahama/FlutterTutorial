import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/view/login/login_view_model.dart';
import 'package:flutter_application_2/presentation/view/home/home_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LoginView extends ConsumerWidget{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref){
    final state = ref.watch(loginViewModelProvider);
    final notifier = ref.read(loginViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('ログインページ'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('ログインする'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeView()),
            );
          }, 
        ),
      ),
    );
  }
}