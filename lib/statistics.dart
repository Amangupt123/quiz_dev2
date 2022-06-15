import 'dart:developer';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:quiz_dev2/wallet.dart';

import 'appbarwithpicture.dart';

class statistics extends StatefulWidget {
  const statistics({Key? key}) : super(key: key);

  @override
  State<statistics> createState() => _statisticsState();
}

class _statisticsState extends State<statistics> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 45,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Statistics"),
              Image.asset(
                "assets/trophi.png",
                scale: 3,
              )
            ],
          ),
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
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/frame293x.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          flexibleSpace: const AppBarWithPicture(),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   // height: MediaQuery.of(context).size.height,
                //   height: 200,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //       image: AssetImage(
                //         "assets/background.png",
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 16.0, left: 16, right: 16, bottom: 12),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/back.png",
                      ),
                      const Positioned(
                          left: 25,
                          top: 70,
                          child: Text(
                            "30",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Color(
                                  0xffFFFFFF,
                                )),
                          )),
                      const Positioned(
                        left: 25,
                        top: 40,
                        child: Text(
                          "Total Played Quiz",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(
                                0xffFFFFFF,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  // height: 500,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              // side: BorderSide( width: 0.5),
                              borderRadius: BorderRadius.circular(8)),
                          //Wrap with IntrinsicHeight
                          child: IntrinsicHeight(
                            child: Row(
                              //    mainAxisAlignment: MainAxisAlignment.start,
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 230,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                    color: Colors.orangeAccent,
                                  ),
                                  width: 6,
                                  //child: mailto:image.asset('assets/images/changepass@1x.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        //   mainAxisAlignment: MainAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Master Minds",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 100,
                                          ),
                                          Text("Date:"),
                                          Text(
                                            "17 Apr 2022",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        //color: Color(0xffF6FAFF),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: Color(0xffF6FAFF),
                                        ),

                                        child: DottedBorder(
                                          dashPattern: const [10, 10, 10, 10],
                                          // borderType: BorderType.RRect,
                                          // radius: Radius.circular(12),
                                          // padding: EdgeInsets.all(6),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.80,
                                            height: 36,

                                            // height: MediaQuery.of(context)
                                            //         .size
                                            //         .height /
                                            //     6,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "Your Score is ",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Text(
                                                  " 70",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Color(0xff000000),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // ClipRRect(
                                          //   borderRadius: BorderRadius.all(Radius.circular(12)),
                                          //   child: Container(
                                          //     height: 100,
                                          //     width: 320,
                                          //     color: Colors.amber,
                                          //   ),
                                          // ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 73,
                                            width: 98,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                color: Color(0xffF8F7FF)
                                                // color: Color.fromRGBO(
                                                //     109, 92, 251, 0.04),
                                                ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  "10",
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Text(
                                                  "Total Question",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                              height: 73,
                                              width: 98,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Color(0xffF8FEFC)
                                                  // color: Color.fromRGBO(
                                                  //     77, 225 ,158, 0.04),
                                                  ),
                                              // color: Color(0xff4DE19E),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    "08",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.green,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Text("Correct Answer"),
                                                ],
                                              )),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                              height: 73,
                                              width: 98,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Color(0xffFFFAF8)
                                                  // color: Color.fromRGBO(
                                                  //     109, 92, 251, 0.04),
                                                  ),
                                              // color: Color(0xffFC6739),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    "02",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  Text("Wrong Answer"),
                                                ],
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                //     Text("date:17 Apr 2022"),
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Text("Master Minds"),
                                //     Text("date:17 Apr 2022"),
                                //   ],
                                // ),
                                // IconButton(
                                //   icon: Image.asset('assets/images/back.png'),
                                //   onPressed: () {
                                //     Get.to(() => ChangePassword());
                                //   },
                                // )
                              ],
                            ),
                          ),
                        )),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
