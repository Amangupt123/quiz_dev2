// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:quiz_dev2/verifykyc.dart';

import 'appbarwithpicture.dart';
import 'myseparator.dart';

class referral extends StatefulWidget {
  const referral({Key? key}) : super(key: key);

  @override
  State<referral> createState() => _referralState();
}

class _referralState extends State<referral>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
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
              child: const Text("Referral & Earn")),
          toolbarHeight: 100,
          // backgroundColor: Color(0xffF8922D),
          //leadingWidth: 42,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: GestureDetector(
              onTap: () {
                log("Button pressed");
              },
              child: InkWell(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => verifykyc()));
                }),
                child: Image.asset(
                  'assets/drawer.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
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
                  "assets/man.png",
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
                          "assets/share.png",
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
                Container(
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
                            Text(
                              "Your Referral Code",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // SizedBox(
                                //   height: MediaQuery.of(context).size.height * 0.09,
                                // ),
                                const Text(
                                  "QB147HG7 ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff000000)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 16.0, bottom: 10),
                                  child: Image.asset(
                                    "assets/copy1.png",
                                    scale: 2.8,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
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
