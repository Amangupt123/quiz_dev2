// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_dev2/appbarwithpicture.dart';
//import 'package:quizapp/views/user_score/token.dart';
//import 'package:quiz_dev2/verifykyc.dart';

import 'appBarWithPicture.dart';
import 'cat_fact_response.dart';
//import 'appbarwithpicture.dart';
//import 'myseparator.dart';

class referral extends StatefulWidget {
  const referral({Key? key}) : super(key: key);

  @override
  State<referral> createState() => _referralState();
}

class _referralState extends State<referral>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  CatFactResponse? x;
  Future<CatFactResponse> getUser() async {
    final Dio _dio = Dio();
    // Perform GET request to the endpoint "/users/<id>"
    Response response = await _dio.get(
        "http://23.23.68.11/quiz_app/admin/public/api/refferal-code",
        options: Options(headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiZjlhMmE3MDc5MGIzNDk0NTM2YThmN2I1YmYxNDZmZjhmZWU2MGU2YTA4YzRmZDRmOGZjMWRjZTgwNjBkZjc1MmM0YjhiODFlNjA3MDQ5YzUiLCJpYXQiOjE2NTU5NjA0MTMuNzEwNjE1LCJuYmYiOjE2NTU5NjA0MTMuNzEwNjIsImV4cCI6MTY3MTc3MTYxMy43MDIyNTgsInN1YiI6IjQyIiwic2NvcGVzIjpbXX0.UwuKEbjAiJ735D0Ez5P40JozQCtJbkprvcVdKrYdtsp9RAy4ArxT6zg9BNFXtXnVWngq6flO-l7mvF6cwtNtwt1wa_kqCWSfUOqbOTLLGNRiR64AQuYwKilKyAK9oLvIUSXg7dPhAhW3kYVxd9I20TMM67Anp6j6Vq0PUTh_1FCL08MADt-TUZNOvF5y_NV0426X3vJctrrwGBitj2txW9FYM7fi2zjSd_ui8LPHo-uhrPNA5hCxzXEIP2a5D1T9EIEnt5vJx7CsYDGCOlVjak16Dy0NL43DFgBXAm7onj2Pn56VkfdS6W8_DHqdz6K_1JaBAZifvQbNYlFs70-0rTYPvVWaqKMEcs7wV88ySXiwdVuhP5YvSRPHqRtWwb6OrYK4rQ_Fu2zuv3LK_0AuQzrlzST5IkDhS-nA2YMTiNy1uOtdkEN0nDJJwHrrKEGG9fo4klQEeuTndQ7N7wc17eMoF4DDpiHu8_x4ZIdNuX4S5qwLu7vUDAhWthdroRhvhnh08uhPeg-TwjWHmwgZQPO-wZ8W4B-bAU9VXrdRfwavftrSsZGJF1Ku8-alR7ipz9g6Z658QnlgJv436rGqv2o9-_Er8HH6Hl3y58747HRxVioT9ZiyzqH0so9adl420ShEF0l7dpsEKcfeVCmkhBBuV2PvimnFHFMKDmKkEzc',
        }));

    // Prints the raw data returned by the server
    debugPrint('User Info: ${response.data}');

    // Parsing the raw JSON data to the User class
    CatFactResponse referralCodeData = CatFactResponse.fromJson(response.data);
    x = CatFactResponse.fromJson(response.data);
    setState(() {});
    debugPrint(x!.data);

    return referralCodeData;
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
    getUser();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 45,
          title: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text("Referral & Earn")),
          toolbarHeight: 100,
          // backgroundColor: Color(0xffF8922D),
          //leadingWidth: 42,

          leading: Image.asset(
            'assets/drawer.png',
            scale: 1.0,
            // fit: BoxFit.contain,
          ),

          flexibleSpace: const AppBarWithPicture(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffFC942D),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        color: Colors.white,
                        border: Border.all(width: 4.5, color: Colors.orange)),
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.white,
                    tabs: const [
                      Tab(
                        text: 'Invite',
                      ),
                      Tab(
                        text: 'Referral',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  "assets/play.png",
                  scale: 2.8,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Invite Your friends",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10),
                const Text(
                  "You will get Prizes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 25),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffFC942D),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 90.0),
                        child: Text(
                          "Share Now",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/play.png",
                          scale: 3.2,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(painter: DrawDottedhorizontalline()),
                    Text(
                      "OR",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Clipboard.setData(
                            ClipboardData(text: x == null ? "" : x!.data))
                        .then((_) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Copied to your successful !')));
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.86,
                    height: MediaQuery.of(context).size.height * 0.075,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF4F6F8),
                    ),
                    child: DottedBorder(
                        dashPattern: [4, 4, 4, 4],
                        color: Color(0xffFD9A3A),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ignore: prefer_const_constructors
                              Text(
                                "Your Referral Code",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  // SizedBox(
                                  //   height: MediaQuery.of(context).size.height * 0.09,
                                  // ),
                                  Text(
                                    x == null ? "null value" : x!.data,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff000000)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 16.0, bottom: 10),
                                    child: Image.asset(
                                      "assets/play.png",
                                      scale: 2.8,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "COPY THIS CODE",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5AADFF)),
                  ),
                )
                //drawing horizontal dotted/dash line
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  late Paint _paint;
  DrawDottedhorizontalline() {
    _paint = Paint();
    _paint.color = Colors.grey; //dots color
    _paint.strokeWidth = 0; //dots thickness
    _paint.strokeCap = StrokeCap.square; //dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = -200; i < 190; i = i + 5) {
      // 15 is space between dots
      if (i % 3 == 0)
        canvas.drawLine(Offset(i, 0.0), Offset(i + 7, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
