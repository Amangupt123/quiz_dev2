// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quiz_dev2/Quiz.dart';
import 'package:quiz_dev2/practice.dart';
import 'package:quiz_dev2/TileBid.dart';

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
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                elevation: 0),
            body: Container(
              //height: screenSize.height,
              //width: screenSize.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/top_header@3x.png"),
                          fit: BoxFit.fitWidth,
                        ),
                        // title: const Text("Bar Chart"),
                        // centerTitle: true,
                        // backgroundColor: Colors.green[700],
                      ),
                      // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      // child: charts.BarChart(
                      //   series,
                      //   animate: true,
                    ),
                    //title: Image.asset('assets/top_header@3x.png'),
                    //toolbarHeight: 100,
                    //backgroundColor: Color(
                    //0xffF8922D,
                    //),
                    // leadingWidth: 42,
                    // leading: Padding(
                    //    padding: const EdgeInsets.only(left: 12.0),

                    // Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    //children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Text(
                        "Let's Start...",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Question 1 of 4",
                        style: TextStyle(
                          color: Color(0xff727272),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 7,
                        width: 370,
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TileBid(
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TileBid(
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TileBid(
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TileBid(
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
            )));
  }
}
