import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quiz_dev2/appbarwithpicture.dart';
import 'package:quiz_dev2/quiz_servery.dart';

class practice extends StatefulWidget {
  const practice({Key? key}) : super(key: key);

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 45,
          title: const Text("Practice Quiz"),
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: GestureDetector(
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
            top: 16.0,
            left: 16,
            right: 16,
          ),
          child: ListView.builder(
            // reverse: true,
            itemCount: 10,
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
                    //Wrap with IntrinsicHeight
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Container(
                            height: 70,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8)),
                              color: Colors.orangeAccent,
                            ),
                            width: 8,
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Text ${index + 1}",
                                        style: const TextStyle(
                                            fontSize: 17,
                                            color: const Color(
                                              0xff111128,
                                            ),
                                            fontWeight: FontWeight.w900),
                                      ),
                                      Text(
                                        "Date ${17 - index} Apr 2022",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/play.png",
                                    height: 33,
                                    width: 33,
                                  ),
                                ],
                              ),
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
