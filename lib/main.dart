import 'package:flutter/material.dart';
import 'package:quiz_dev2/quiz_servery.dart';
import 'package:quiz_dev2/socialButton.dart';
import 'socialButton.dart';

import 'Quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScree(),
    );
  }
}
