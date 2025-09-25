import 'package:flutter/material.dart';
import 'package:flutter_application_2/presentation/view/home/home_state.dart';

// ignore: camel_case_types
class difficulty extends StatelessWidget{
  const difficulty({super.key, required this.state});

  final HomeState state;

  @override
  Widget build(BuildContext context){

    final int maxDifficulty = 3;

    return SizedBox(
      child: Row(
        children: List.generate(maxDifficulty, (index){
          final isActive = index < state.subject1.unit.lesson.difficulty.id;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(
              isActive ? 'images/fire-active-icon.png' : 'images/fire-icon.png',
              width: 18,
              height: 18,
              fit: BoxFit.cover,
            ),
          );
        }),
      ),
    );
  }
}