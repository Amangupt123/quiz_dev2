// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_dev2/Quiz.dart';
import 'package:quiz_dev2/practice.dart';
import 'package:quiz_dev2/socialButton.dart';

class quiz_servey extends StatefulWidget {
  quiz_servey({Key? key}) : super(key: key);

  @override
  State<quiz_servey> createState() => _quiz_serveyState();
}

class _quiz_serveyState extends State<quiz_servey> {
  int selectedID = 0;
  List<bool> buttonList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          //  title: Text("Live Quiz") ,
          toolbarHeight: 100,
          backgroundColor: Color(
            0xffF8922D,
          ),
          // leadingWidth: 42,
          // leading: Padding(
          //    padding: const EdgeInsets.only(left: 12.0),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 22.0, left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's Start...",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Question 1 of 4",
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => practice(),
                        ),
                      );
                    },
                    child: Text(
                      "1.",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xff505050),
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      "Which on the following is the greatest circle?.",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xff505050),
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TileBid(
                onClick: () {
                  buttonList = [
                    true,
                    true,
                    false,
                    false,
                  ];
                  setState(() {});
                },
                title: "Arctic Circle",
                titles: "A",
                selectedColor: Colors.red,
                id: 1,
                selected: buttonList[0],
                //title: "London,United Kingdom",
              ),
              SizedBox(
                height: 10,
              ),
              TileBid(
                onClick: () {
                  buttonList = [
                    false,
                    true,
                    false,
                    false,
                  ];
                  setState(() {});
                },
                title: "Equator",
                titles: "B",
                selectedColor: Colors.green,
                id: 1,
                selected: buttonList[1],
                //title: "London,United Kingdom",
              ),
              SizedBox(
                height: 10,
              ),
              TileBid(
                onClick: () {
                  buttonList = [
                    false,
                    true,
                    true,
                    false,
                  ];
                  setState(() {});
                },
                title: "Topic of Cancel",
                titles: "C",
                selectedColor: Colors.red,
                id: 1,
                selected: buttonList[2],
                //title: "London,United Kingdom",
              ),
              SizedBox(
                height: 10,
              ),
              TileBid(
                onClick: () {
                  buttonList = [
                    false,
                    true,
                    false,
                    true,
                  ];
                  setState(() {});
                },
                title: "Tropic of Capricon",
                titles: "D",
                selectedColor: Colors.red,
                id: 1,
                selected: buttonList[3],
                //title: "London,United Kingdom",
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
