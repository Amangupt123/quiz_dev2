// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuizScree extends StatefulWidget {
  const QuizScree({Key? key}) : super(key: key);

  @override
  State<QuizScree> createState() => _QuizScreeState();
}

class _QuizScreeState extends State<QuizScree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          title: Text("Live Quiz"),
          toolbarHeight: 100,
          backgroundColor: Color(0xffF8922D),
          leadingWidth: 42,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: GestureDetector(
              onTap: () {
                log("Button pressed");
              },
              child: Image.asset(
                'assets/frame293x.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset(
                            "assets/vector3x.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          "17k",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                "Question 4 of 20",
                style: TextStyle(
                  color: Color(0xff727272),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 7,
                width: 400,
                color: Color(0xffF4F6F8),
                child: Row(
                  children: [
                    Container(
                      height: 7,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xffFFBF47),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "4.  Where is the Taj Mahal located?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff505050),
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 157,
                width: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child:
                      Image.asset('assets/tajmahal3x.png', fit: BoxFit.cover),
                ),
              )
            ],
          ),
        ),
        // body: Container(
        //   height: 100,
        //   width: 100,
        //   color: Colors.red,
        //   child: SvgPicture.asset(
        //     "assets/frame293x.svg",
        //   ),
        // ),
      ),
    );
  }
}
