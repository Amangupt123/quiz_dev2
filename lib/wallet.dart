// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_dev2/appbarwithpicture.dart';
import 'package:quiz_dev2/demo.dart';
import 'package:quiz_dev2/referral.dart';
import 'package:quiz_dev2/walletmodel.dart';
// import 'package:quizapp/views/user_score/token.dart';
// import 'package:quizapp/views/user_score/walletmodel.dart';
//import 'package:quiz_dev2/demo.dart';
//import 'package:quiz_dev2/referral.dart';

import 'MYHomePage.dart';
import 'appBarWithPicture.dart';
//import 'appbarwithpicture.dart';

class Kitty extends StatefulWidget {
  const Kitty({Key? key}) : super(key: key);

  @override
  State<Kitty> createState() => _KittyState();
}

class _KittyState extends State<Kitty> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  Wallet? x;
  Future<Wallet> getUser() async {
    final Dio _dio = Dio();
    // Perform GET request to the endpoint "/users/<id>"
    Response response = await _dio.get(
        "http://23.23.68.11/quiz_app/admin/public/api/wallet-terms",
        options: Options(headers: {
          'Authorization':
              'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiZWViNTU1MjFhOTQ2NzJlMThlNzI0NjYzM2E3MjYwMmYwNWE2NzdkMzNjNTgzZDY5ZWVmNTU0NjM2YmYyZjVkNGVlODBhMzAzNGJmYWE3ZDMiLCJpYXQiOjE2NTYzMDYyNzIuODA4NjksIm5iZiI6MTY1NjMwNjI3Mi44MDg2OTQsImV4cCI6MTY3MjExNzQ3Mi43OTk2MjksInN1YiI6IjQiLCJzY29wZXMiOltdfQ.Ac52SdDiGMNLn2S7-3WhCM7o7lJFbTJRUMqYErqJvR4zBflCNGPL7m7mRCExRbjCk8GvXXT7IOta1Ae3RekhlMmCDX1QikKuu__8XCVoGWuVY7zEokcDgBCXFTbrZ2z2EvBUwMO3IEjQrtzvKn-7DsPwVWIsENUZUmsRFDur0qmxLaotxc3x3Hf9jJFRWR8TnnY0pGvPnL75Nxw04h1-VKP1vSm2qtVJCUYAmIV_m86AyQgdLrdOs9ZUlq6wRFm4b9MkZmO3sh7zPyVI3g9fwpgx47eSnYtPsvb55RMIyTXk4YvENC9HoZpzVntRGRWV5z-6ODO5L8AxEc2CHZVEIar0oq-wM9yEaSeVyk0TPR6HbXgeKUBCdcuSkp-UGruq3s5OtU5FPs3rBeqfzViHKBaa46VTTbNCcOtPexU75k0O1U2nTj1IEOSlfQ9cDXil2Ai7_cM5eMZpcUvyrS_LixjbdyvyBrhpns4IENVofg2tjFaIuWNQcX2W_KAYq9PJmz7NxqjP8npixkVtl7F_isF5IS47TH76Pv4rTrJsxU8YVNQ3tDyR1z-9qMMyoA0m_d6gU4j-Ex7PhoH6TBLXThUn8l087y7eAIWFpFyD0uXtn8ybt1nAdWTBL6XwqHAkXdndOoXxgjaRIx7Zww2xdqgw3SLtdtEDkLcRp4J9uwI',
        }));

    // Prints the raw data returned by the server
    debugPrint('User Info: ${response.data}');

    // Parsing the raw JSON data to the User class
    // ignore: non_constant_identifier_names
    Wallet WalletCodeData = Wallet.fromJson(response.data);
    x = Wallet.fromJson(response.data);
    setState(() {});
    debugPrint(x!.data);

    return WalletCodeData;
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
    //  _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFD932F),
        appBar: AppBar(
          elevation: 0,
          // leadingWidth: 45,
          title: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => referral(),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/drawer.png", scale: 2.3,
                    // scale: 3.6,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              // SizedBox(
              //   width: 1,
              // ),
              const Text("Wallet"),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.38,
              ),
              Image.asset(
                "assets/icon.png",
                scale: 2.8,
              )
            ],
          ),

          toolbarHeight: 100,

          // backgroundColor: Color(0xffF8922D),

          flexibleSpace: const AppBarWithPicture(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffFFFFFF),
                  ),
                  // alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        //width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffE8F8E9)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Image.asset("assets/right.png", scale: 2.3),
                            const SizedBox(width: 12),
                            const Text(
                              "Your KYC is Verified",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(width: 5),
                            Image.asset(
                              "assets/right.png",
                              scale: 2.3,
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 20.0, top: 16, bottom: 5),
                        child: Text(
                          "Total Wallet Balance",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "₹",
                              style: TextStyle(
                                  color: Color(0xffFB9633),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              x == null ? "" : x!.message ?? "",
                              style: TextStyle(
                                  color: Color(0xffFB9633),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.32,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Text("df"),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.green),

                                    // color: Colors.red,
                                    //borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(
                                        "assets/withdraw.png",
                                        scale: 2.9,
                                      ),
                                      Text(
                                        "Withdraw",
                                        style: TextStyle(
                                            color: Color(0xff2D3749),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.39,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff4C80FF)),
                                    borderRadius: BorderRadius.circular(10)

                                    // color: Colors.red,
                                    //borderRadius: BorderRadius.circular(20),
                                    ),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                          "assets/locka.png",
                                          scale: 2.9,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          "₹",
                                          style: TextStyle(
                                              color: Color(0xff4C80FF),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "500",
                                          style: TextStyle(
                                              color: Color(0xff4C80FF),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          "Locked amount",
                                          style: TextStyle(
                                              color: Color(0xff2D3749),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.02,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                width: MediaQuery.of(context).size.width * 0.39,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff1DBC19)),
                                    borderRadius: BorderRadius.circular(10)

                                    // color: Colors.red,
                                    //borderRadius: BorderRadius.circular(20),
                                    ),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset(
                                          "assets/telep.png",
                                          scale: 2.9,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          "₹",
                                          style: TextStyle(
                                              color: Color(0xff1DBC19),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "1500",
                                          style: TextStyle(
                                              color: Color(0xff1DBC19),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          "Withdraw Amount",
                                          style: TextStyle(
                                              color: Color(0xff2D3749),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.526,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: const Color(0xffFFFFFF),
                    ),
                    child: MyHomePage(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
