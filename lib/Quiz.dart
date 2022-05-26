// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'dart:ui';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_dev2/quiz_servery.dart';
import 'package:quiz_dev2/TileBid.dart';

import 'package:charts_flutter/flutter.dart' as charts;

import 'appbarwithpicture.dart';

class BarChartModel {
  String year;
  int financial;
  final charts.Color color;

  BarChartModel({
    required this.year,
    required this.financial,
    required this.color,
  });
}

class QuizScree extends StatefulWidget {
  const QuizScree({Key? key}) : super(key: key);

  @override
  State<QuizScree> createState() => _QuizScreeState();
}

class _QuizScreeState extends State<QuizScree> {
  final List<BarChartModel> data = [
    BarChartModel(
      year: "A",
      financial: 15,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      year: "B",
      financial: 55,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      year: "C",
      financial: 8,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      year: "D",
      financial: 22,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    // BarChartModel(
    //   year: ".",
    //   financial: 200,
    //   color: charts.ColorUtil.fromDartColor(Colors.white),
    // ),
  ];

  final int _duration = 10;
  final CountDownController _controller = CountDownController();
  int selectedID = 0;
  List<bool> buttonList = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        //measureUpperBoundFn: (BarChartModel series, _) => 100,
        // measureUpperBoundFn: (BarChartModel series, int) => 100,
        //  domainFn:(BarChartMode, int) => 100,
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 45,
          title: const Text("Live Quiz"),
          toolbarHeight: 100,
          // backgroundColor: Color(0xffF8922D),
          //leadingWidth: 42,
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
          flexibleSpace: AppBarWithPicture(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 58,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: CircularCountDownTimer(
                        duration: _duration,

                        initialDuration: 10,

                        controller: _controller,

                        width: MediaQuery.of(context).size.width / 6.5,

                        height: MediaQuery.of(context).size.height / 10,

                        ringColor: Colors.grey[300]!,

                        ringGradient: null,

                        fillColor: Color(0xffFFBF47),

                        fillGradient: null,

                        backgroundColor: Colors.white,

                        backgroundGradient: null,

                        strokeWidth: 5.0,

                        strokeCap: StrokeCap.round,

                        textStyle: const TextStyle(
                          fontSize: 38.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),

                        textFormat: CountdownTextFormat.S,

                        isReverse: true,

                        isReverseAnimation: false,

                        isTimerTextShown: true,
                        // onStart: () => _controller.start(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 6),
                      child: Container(
                        height: 35,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 13,
                              width: 30,
                              child: Image.asset(
                                "assets/vector3x.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "17k",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Question 4 of 20",
                  style: TextStyle(
                    color: Color(0xff727272),
                    fontSize: 20,
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
                InkWell(
                  onTap: () {
                    showModalBottomSheet<void>(
                      backgroundColor: Colors.transparent,
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.vertical(
                          //   top: Radius.circular(30.0),
                          // ),
                          ),
                      builder: (BuildContext context) {
                        return Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              // BoxShadow(
                              //     color: Color(0xffC9A676), spreadRadius: 1)
                            ],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                topRight: Radius.circular(30.0)),
                          ),
                          height: 530,
                          //color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: CircularCountDownTimer(
                                    duration: _duration,

                                    initialDuration: 10,

                                    controller: _controller,

                                    width:
                                        MediaQuery.of(context).size.width / 6.5,

                                    height:
                                        MediaQuery.of(context).size.height / 10,

                                    ringColor: Colors.grey[300]!,

                                    ringGradient: null,

                                    fillColor: Color(0xffFFBF47),

                                    fillGradient: null,

                                    backgroundColor: Colors.white,

                                    backgroundGradient: null,

                                    strokeWidth: 5.0,

                                    strokeCap: StrokeCap.round,

                                    textStyle: const TextStyle(
                                      fontSize: 38.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),

                                    textFormat: CountdownTextFormat.S,

                                    isReverse: true,

                                    isReverseAnimation: false,

                                    isTimerTextShown: true,
                                    // onStart: () => _controller.start(),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Your",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Answer B",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "is Correct",
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 80,
                                ),

                                SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: charts.BarChart(
                                    series,
                                    animate: true,
                                  ),
                                ),

                                // const Text('Modal BottomSheet'),
                                // ElevatedButton(
                                //   child: const Text('Close BottomSheet'),
                                //   onPressed: () => Navigator.pop(context),
                                // )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "4.  Where is the Taj Mahal located?",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 157,
                  width: 420,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 35.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => quiz_servey()));
                      },
                      child: Image.asset(
                        'assets/tajmahal3x.png',
                      ),
                    ),
                  ),
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
                  title: "London,United Kingdom",

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
                  title: "Agra,India",
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
                  title: "Paris,France",
                  titles: "C",
                  selectedColor: Colors.red,
                  id: 1,
                  selected: buttonList[2],
                  // IconButton(
                  //   icon: Image.asset('assets/images/back.png'),
                  //   onPressed: () {
                  //     // Get.to(() => ChangePassword());
                  //   },
                  // )
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
                  title: "Toronto,Canada",
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
