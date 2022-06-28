import 'dart:developer';

import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_dev2/verifykyc.dart';

import 'appbarwithpicture.dart';

class myprofile extends StatefulWidget {
  const myprofile({Key? key}) : super(key: key);

  @override
  State<myprofile> createState() => _myprofileState();
}

class _myprofileState extends State<myprofile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 45,
          title: const Text("My Profile"),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Verifykyc()));
                },
                child: Image.asset(
                  'assets/drawer.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          flexibleSpace: AppBarWithPicture(),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            left: 16,
            right: 16,
          ),
          child: ListView.builder(
            // reverse: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey,
                          width: .5,
                        ),
                        borderRadius: BorderRadius.circular(8)),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            child: index == 0
                                ? Image.asset(
                                    "assets/gudda.png",
                                    scale: 2.8,
                                  )
                                : Image.asset(
                                    "assets/gudda2.png",
                                    scale: 2.8,
                                  ),
                            height: 55,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              color: Colors.orangeAccent,
                            ),
                            width: 50,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // SizedBox(
                                //   width: 10,
                                // ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                      index == 0
                                          ? "Edit Profile"
                                          : "Change Password",
                                      style: Theme.of(context).textTheme.button

                                      // style: const TextStyle(
                                      //     fontSize: 17,
                                      //     color: const Color(
                                      //       0xff111128,
                                      //     ),
                                      //     fontWeight: FontWeight.w900),
                                      ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Image.asset(
                                    "assets/arrow.png",
                                    scale: 2.5,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }
}
