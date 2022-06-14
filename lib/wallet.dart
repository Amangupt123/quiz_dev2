import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'appbarwithpicture.dart';

class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
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
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/drawer.png",
                  scale: 2.6,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              // SizedBox(
              //   width: 1,
              // ),
              const Text("Wallet"),
              const SizedBox(
                width: 240,
              ),
              Image.asset(
                "assets/icon.png",
                scale: 2.6,
              )
            ],
          ),

          toolbarHeight: 100,

          // backgroundColor: Color(0xffF8922D),

          flexibleSpace: const AppBarWithPicture(),
        ),
        body: Column(
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
                          Image.asset(
                            "assets/Contact.png",
                            scale: 2.3,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text(
                            "Your KYC is Verified",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/right.png",
                            scale: 2.3,
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20.0, top: 16, bottom: 5),
                      child: const Text(
                        "Total Wallet Balance",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/two.png", scale: 2.2),
                          Image.asset("assets/with.png", scale: 2.5),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/five.svg",
                            width: 165,
                          ),
                          SvgPicture.asset(
                            "assets/fivt.svg",
                            width: 165,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.505,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: const Color(0xffFFFFFF),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text("Transaction History",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
