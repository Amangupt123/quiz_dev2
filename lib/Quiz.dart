// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'dart:developer';
//import 'dart:ui';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quiz_dev2/correctanswer.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_dev2/quiz_servery.dart';
import 'package:quiz_dev2/TileBid.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:quiz_dev2/quizemodel.dart' as quizemodel;

// import 'package:quiz_dev2/token.dart';

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

class _QuizScreeState extends State<QuizScree>
    with SingleTickerProviderStateMixin {
  quizemodel.Quizee? x;
  Correct? y;
  Future<void> getUser() async {
    Dio dio = Dio();
    // Perform GET request to the endpoint "/users/<id>"
    var response = await dio.get(
        "http://23.23.68.11/quiz_app/admin/public/api/get-question",
        options: Options(headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiNjdhMGQzMTYxZmE3YjViMmRjMGVkOWEwOTNiY2VkMjNmMjhhMmI1YzU2ZmI5NzY2NTgyZGU3YTNlYjEzMDA1OWZjODQ4NjlkNGM3YmVkNzYiLCJpYXQiOjE2NTYzOTQzNjcuMzE4ODk2LCJuYmYiOjE2NTYzOTQzNjcuMzE4OSwiZXhwIjoxNjcyMjA1NTY3LjMxMSwic3ViIjoiNDIiLCJzY29wZXMiOltdfQ.O2bI_klM-yNlzIY-J8BLY4CVK_Z8AKDQ5ca1bJNU9hSpjWogSouHYrdrzmvruuCDAXUgFXCPT72fB-TNobuAZnIT5-_Jya4xRaPAhHIIL-o2AK7fo5el6xIc1Y-aTQ_XmzIKmEDrNoSxakgLCAY__ikfQImJCYQsR47LQpHaGIyYX941Ld49ldei80Rn9iSvu4s5SNnOO57LyH4a1es_kfYoBjYYfPk4IZVHe9gDntNLlsUiSBHZUt1vYV8fEV2WfgVrvAVjnzTxsAYE5m96xY9LLaKrCfiQpN9M5FSR2FywkwGRPTSjbfdW8m_Hnw-1ui8DmN4fIu7wgpipE-VqQh9CLKrT96nvWUkVFDmLjK9XiT45jGmNXr9vfaWQFdDEmL5_gi_19CBF8gzya5Wm-hy2z46_r_s_AzbovbJB4YnP9ezrcRwvFtLEZlOB8sOvVEQxP9cEQvKIMRdka-DJODX_7s-bMzYuBdi5hZWkNEorXW0yJyAefSGMZmVhKfVuYPLP-w3EQxdGA52mVcjx6vuehA0O7A0jXZh-1jQt_dy_rVRzhek7Qg3tg5H1VAVDxhwb8c9YFuT6_ydjHkOA8HcRYjldF6NScYBtIXlPb4ZbD2ozWBLCFjFR-K5wHkfaVxC9DoJ_1D0ySFaGpqT-hu2kBrrzBiAsJsnR0E_qCSE',
        }));

    // Prints the raw data returned by the server
    debugPrint('User Info: ${response.data}');

    // Parsing the raw JSON data to the User class

    x = quizemodel.Quizee.fromJson(response.data);
    setState(() {});
    debugPrint(x!.data.questions.question);
  }

  Future<void> getUserr(ansId, quesId) async {
    Dio dio = Dio();
    var formData = {"question_id": quesId, "answer_id": ansId};
    // Perform GET request to the endpoint "/users/<id>"
    var response = await dio.post(
        "http://23.23.68.11/quiz_app/admin/public/api/correct-answer",
        data: formData,
        options: Options(headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiY2QzNzk1NDQ5OTk5YjU4N2NiN2U1OThmM2ZjNmVhZTBlNWMwMTJjNGU1OWFmNjJjYTllNmE4MmIzNThiY2UzMGZkYzlhYTgxOGU3Y2Y3M2UiLCJpYXQiOjE2NTYzMjk2MzkuMjY0NzksIm5iZiI6MTY1NjMyOTYzOS4yNjQ3OTQsImV4cCI6MTY3MjE0MDgzOS4yNDU2Niwic3ViIjoiNDIiLCJzY29wZXMiOltdfQ.sr1xkHhVAYuIyKrL-rpC3s_jZItKrmt1zw_vxHr5a8ybHyc8gJv9D4jes1bjIaefwHX64Wm7rlZeSzMcRwmAHaKOg7q_Yzj4QHtuNC6LYrUloEx6xgkMHzb4iQZEmpIzNplea-Z4b3Es9IkWyO-CjANMjL8ILxC8moCJL0ScvDqzQ7qqGFEhl3nv6PPe0p050ns5hCFFzTYLK9hXK0x1psv32JKE5_A_5zxKQMEA7GF7a1FOqqxHGyspJCAeH0xLwkmAmLdvUFRxGu3Ff9SYy0hXe88ZiZqd_G97qyTYHvTgoMnjDa-Fg60wIj-0dw4Wq3jzXIoD2fZqQ6Kvz50j5hfok0q1mOuLCNXZRHsQiotSQ02JaKsSYfx0uJMXWB1c_TFDzbeVTdLIq-VH8yehmoO1xPk9x_WTw15LGKXjcpwus1BXYlmNv-orpu7Q56td3HLZOtlfasOzgD6kJwdVAajc2CmtS_FxgQwiyaCoU-B8hIT3cjqt_rOz-vWRgH8NlWnJUjsgHK83WM-emyFtb3XHlUeLdEXeMGE_NhJUzt6z9oqm_H1m6CtZEpMzorllWJ-7ozYXTkg9qzMuZIzNGOdx6J9zOlaMFK_wHCGOBns8X5A-zFcguRs1U6t3uJkg_xuKxefzw2ac8B__cGzvxoaConG7pjsJIMbceOKOWds',
        }));

    // Prints the raw data returned by the server
    debugPrint('User Info: ${response.data}');

    // Parsing the raw JSON data to the User class

    y = Correct.fromJson(response.data);
    setState(() {});
    debugPrint(y!.data);
  }

  @override
  void initState() {
    //_tabController = TabController(length: 2, vsync: this);
    super.initState();
    getUser();
    getUserr(3, 7);
  }

  @override
  void dispose() {
    super.dispose();
    // _tabController?.dispose();
  }

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
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //    mainAxisAlignment: MainAxisAlignment.center,
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

                        width: MediaQuery.of(context).size.width / 5.5,

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
                          fontSize: 40.0,
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
                SizedBox(
                  height: 10,
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
                  height: 17,
                ),
                Container(
                  height: 7,
                  width: 385,
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
                  height: 20,
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
                            padding: const EdgeInsets.only(top: 22.0),
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
                                        MediaQuery.of(context).size.width / 5.5,

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
                                      fontSize: 40.0,
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
                                  height: 18,
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
                                  height: 60,
                                ),

                                SizedBox(
                                  height: 300,
                                  width: 300,
                                  child: charts.BarChart(
                                    domainAxis: charts.OrdinalAxisSpec(
                                        renderSpec:
                                            charts.SmallTickRendererSpec(

                                                // Tick and Label styling here.
                                                labelStyle:
                                                    charts.TextStyleSpec(
                                                        lineHeight: 1.5,
                                                        fontSize:
                                                            18, // size in Pts.
                                                        color: charts
                                                            .MaterialPalette
                                                            .black),

                                                // Change the line colors to match text color.
                                                lineStyle: charts.LineStyleSpec(
                                                    color: charts
                                                        .MaterialPalette
                                                        .black))),
                                    primaryMeasureAxis: charts.NumericAxisSpec(
                                        renderSpec: charts.GridlineRendererSpec(
                                      // Tick and Label styling here.
                                      labelStyle: charts.TextStyleSpec(
                                          fontSize: 18, // size in Pts.
                                          color: charts.MaterialPalette.black),
                                    )),
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
                  child: Row(
                    children: [
                      Text(
                        "4.",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 21),
                      ),
                      SizedBox(width: 5),
                      Text(
                        x == null ? "" : x!.data.questions.question,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 21),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => quiz_servey()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/8/80/PM_at_First_Meeting_of_Central_Asia_Summit.jpg',
                      // width: 300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TileBid(
                  onClick: () {
                    buttonList = [
                      true,
                      false,
                      false,
                      true,
                    ];
                    setState(() {});
                    var id = x!.data.questions.options.option1.id.toString();
                    getUserr(id, x!.data.questions.questionId);
                  },
                  title: x == null
                      ? ""
                      : x!.data.questions.options.option1.text[0],

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
                      true,
                    ];
                    setState(() {});

                    var id = x!.data.questions.options.option2.id.toString();
                    getUserr(id, x!.data.questions.questionId);
                  },
                  title: x == null
                      ? ""
                      : x!.data.questions.options.option2.text[0],
                  titles: "B",
                  selectedColor: Colors.red,
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
                      false,
                      true,
                      true,
                    ];
                    setState(() {});
                    var id = x!.data.questions.options.option3.id.toString();
                    getUserr(id, x!.data.questions.questionId);
                  },
                  title: x == null
                      ? ""
                      : x!.data.questions.options.option3.text[0],
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
                      false,
                      false,
                      true,
                    ];
                    setState(() {});
                    var id = x!.data.questions.options.option4.id.toString();
                    getUserr(id, x!.data.questions.questionId);
                  },
                  title: x == null
                      ? ""
                      : x!.data.questions.options.option4.text[0],
                  titles: "D",
                  selectedColor: Colors.green,
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
