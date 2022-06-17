// ignore_for_file: unnecessary_const

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.95,
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Transaction History",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffF4F6F8),
            border: Border.all(color: const Color(0xffF4F6F8)),
          ),
          // height: 50,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 3,
                      color: _controller.index == 0
                          ? Colors.amber
                          : Colors.transparent,
                    ),
                    Container(
                      // margin: EdgeInsets.only(right: 10),
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 3,
                      //  color:Colors.red,
                      color: _controller.index == 1
                          ? Colors.amber
                          : Colors.transparent,
                    ),
                  ],
                ),
              ),
              TabBar(
                // indicatorColor: Colors.amber,
                // indicatorWeight: 3,
                // indicator: BoxDecoration(

                //     color: Colors.white,
                //     border: Border.all(width: 0.5, color: Colors.grey)),

                indicator: BoxDecoration(color: Colors.white),

                padding: const EdgeInsets.only(bottom: 5),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                controller: _controller,
                tabs: [
                  Tab(text: "Credit"),
                  Tab(text: "Redeemed"),
                  //  Tab(text: 'Redeemed'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.97,
          child: TabBarView(controller: _controller, children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.72),
                    child: const Text("28 Apr,2022"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("You won the Master Minds. Your winning",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        Row(
                          children: const [
                            Text(" amount is ₹",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            Text("345.00",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //height: 400,
              // height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.72,
                    ),
                    child: const Text("30 Apr,2022"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("You won the Master Minds. Your winning",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                        Row(
                          children: const [
                            Text(" amount is ₹",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                            Text("345.00",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000))),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ],
    );
  }
}
