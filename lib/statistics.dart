import 'dart:developer';

import 'package:flutter/material.dart';

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
              child: Image.asset(
                'assets/frame293x.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          flexibleSpace: AppBarWithPicture(),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
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
                  child: Image.asset("assets/background.png"),
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
                                Column(
                                  //  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
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
                                        )
                                      ],
                                    ),
                                  ],
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
