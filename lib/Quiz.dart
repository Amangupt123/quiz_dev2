// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
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
  final int _duration = 10;
  final CountDownController _controller = CountDownController();

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 140,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: CircularCountDownTimer(
                      // Countdown duration in Seconds.
                      duration: _duration,

                      // Countdown initial elapsed Duration in Seconds.
                      initialDuration: 10,

                      // Controls (i.e Start, Pause, Resume, Restart) the Countdown Timer.
                      controller: _controller,

                      // Width of the Countdown Widget.
                      width: MediaQuery.of(context).size.width / 6.5,

                      // Height of the Countdown Widget.
                      height: MediaQuery.of(context).size.height / 10,

                      // Ring Color for Countdown Widget.
                      ringColor: Colors.grey[300]!,

                      // Ring Gradient for Countdown Widget.
                      ringGradient: null,

                      // Filling Color for Countdown Widget.
                      fillColor: Colors.green,

                      // Filling Gradient for Countdown Widget.
                      fillGradient: null,

                      // Background Color for Countdown Widget.
                      backgroundColor: Colors.white,

                      // Background Gradient for Countdown Widget.
                      backgroundGradient: null,

                      // Border Thickness of the Countdown Ring.
                      strokeWidth: 5.0,

                      // Begin and end contours with a flat edge and no extension.
                      strokeCap: StrokeCap.round,

                      // Text Style for Countdown Text.
                      textStyle: const TextStyle(
                        fontSize: 38.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),

                      // Format for the Countdown Text.
                      textFormat: CountdownTextFormat.S,

                      // Handles Countdown Timer (true for Reverse Countdown (max to 0), false for Forward Countdown (0 to max)).
                      isReverse: true,

                      // Handles Animation Direction (true for Reverse Animation, false for Forward Animation).
                      isReverseAnimation: false,

                      // Handles visibility of the Countdown Text.
                      isTimerTextShown: true,
                      // onStart: () => _controller.start(),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 30,
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
                height: 20,
              ),
              Container(
                height: 157,
                width: 400,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: Image.asset(
                    'assets/tajmahal3x.png',
                  ),
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
