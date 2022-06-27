import 'package:flutter/material.dart';
import 'package:quiz_dev2/api.dart';
import 'package:quiz_dev2/appbarwithpicture.dart';
import 'package:quiz_dev2/custum.dart';
import 'package:quiz_dev2/pics.dart';
import 'package:quiz_dev2/quiz_servery.dart';
import 'package:quiz_dev2/TileBid.dart';
import 'package:quiz_dev2/referral.dart';
import 'package:quiz_dev2/statistics.dart';
import 'package:quiz_dev2/myprofile.dart';
import 'package:quiz_dev2/verifykyc.dart';
import 'package:quiz_dev2/wallet.dart';
import 'TileBid.dart';

import 'Quiz.dart';
import 'demo.dart';

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
        //home: custum());
        //home: verifykyc());
        //home: referral());
        // home: Api());
        home: QuizScree());
    // home: statistics());
    //home: wallet());
    // home: DashedLine());
    //  home: MyHomepage());
    //home: pics());
    //  home: myprofile());
  }
}
