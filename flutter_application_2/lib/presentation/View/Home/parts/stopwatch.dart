import 'dart:async';
import 'package:flutter/material.dart';

class Stopwatch extends StatefulWidget{
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchWidgetState();
}

class _StopwatchWidgetState extends State<Stopwatch>{
  int _seconds = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer){
        setState(() {
          _seconds++;
        });
      },
    );
  }

  @override
  void dispose(){
    _timer?.cancel();
    super.dispose();
  }

  //タイマー表記に変換
  String formatTime(int seconds){
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
  }

  @override
  Widget build(BuildContext context){
    return Text(
      formatTime(_seconds),
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      )
    );
  }
}