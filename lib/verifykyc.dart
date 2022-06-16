// ignore_for_file: prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'appbarwithpicture.dart';

class verifykyc extends StatefulWidget {
  const verifykyc({Key? key}) : super(key: key);

  @override
  State<verifykyc> createState() => _verifykycState();
}

class _verifykycState extends State<verifykyc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 45,
          title: const Text("Verify you KYC"),
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/frame293x.png',
                //height: 10, width: 10,
                // fit: BoxFit.contain,
              ),
            ),
          ),
          flexibleSpace: const AppBarWithPicture(),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xffF4F8F8),
                child: const Padding(
                  padding: EdgeInsets.only(top: 16.0, left: 20),
                  child: Text(
                    "Upload your Document",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Lorem Ipsum has been the industry's standard dummy\ntext ever since the 1500s",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff727272)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select your Document",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff505050)),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Aadhaar Card",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff000000),
                              ),
                            ),
                            Image.asset(
                              "assets/downarrow.png",
                              scale: 2.6,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Aadhaar Card (Front Side)",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff505050),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      child: DottedBorder(
                        dashPattern: [4, 4, 4, 4],
                        color: Colors.grey,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/camera.png",
                                scale: 2.8,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "  Upload\nDocument",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff505050),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      //overflow: Overflow.visible,
                      // alignment: Alignment.topRight,
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          "assets/document.png",
                          scale: 2.7,
                        ),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.125,
                          left: MediaQuery.of(context).size.width * 0.39,
                          child: Image.asset(
                            "assets/cross1.png",
                            scale: 2.8,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Aadhaar Card (Back Side)",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff505050),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.44,
                      height: MediaQuery.of(context).size.height * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      child: DottedBorder(
                        dashPattern: [4, 4, 4, 4],
                        color: Colors.grey,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/camera.png",
                                scale: 2.8,
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "  Upload\nDocument",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff505050),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Stack(
                      //overflow: Overflow.visible,
                      // alignment: Alignment.topRight,
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          "assets/document.png",
                          scale: 2.7,
                        ),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.125,
                          left: MediaQuery.of(context).size.width * 0.39,
                          child: Image.asset(
                            "assets/cross1.png",
                            scale: 2.8,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.9,
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
                        padding: const EdgeInsets.only(right: 110.0),
                        child: Text(
                          "Upload",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                  //  title: Text("AlertDialog"),
                                  //insetPadding: EdgeInsets.zero,
                                  insetPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),

                                  //   contentPadding: EdgeInsets.only(top: 10.0),
                                  content: Container(
                                    width: 1000.0,
                                    height: 290.0,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 340.0),
                                          child: InkWell(
                                            onTap: (() {
                                              Navigator.pop(context);
                                            }),
                                            child: Image.asset(
                                              "assets/cross2.png",
                                              scale: 3.0,
                                            ),
                                          ),
                                        ),
                                        Image.asset("assets/contact.png",
                                            scale: 3.0),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "KYC Verification in Process",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Literally it does not mean anything. It is a sequence of words without a sense of Latin derivation that make up a text also known as filler text, fictitious, blind or placeholder.",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff727272),
                                          ),
                                        )
                                      ],
                                    ),

                                    // content: Container(
                                    //   height:
                                    //       MediaQuery.of(context).size.height * 0.35,
                                    //   width: MediaQuery.of(context).size.width,
                                    //   decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(50),
                                    //   ),
                                    // ),
                                  ));
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/rightarrow.png",
                            scale: 3.2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//  Positioned(
//                   top: MediaQuery.of(context).size.height * 0.3,
//                   left: MediaQuery.of(context).size.width * 0.33,
//                   child: RichText(
//                       text: const TextSpan(
//                           text: "    60",
//                           style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white),
//                           children: [
//                         TextSpan(text: "\n   Your score", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white))
//                       ]))),
