import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
          title: const Text("Practice Quiz"),
          toolbarHeight: 100,
          backgroundColor: const Color(0xffF8922D),
          leadingWidth: 42,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: GestureDetector(
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
        body: Padding(
          padding: const EdgeInsets.only(
            top: 16.0,
            left: 16,
            right: 16,
          ),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (
              context,
              index,
            ) {
              return Container(
                margin: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Colors.red,
                    border: Border(
                      left: BorderSide(color: Color(0xffFC942D), width: 6),
                      right: BorderSide(width: 1, color: Colors.grey),
                      top: BorderSide(width: 1, color: Colors.grey),
                      bottom: BorderSide(width: 1, color: Colors.grey),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ListTile(
                      // radius: 28,
                      //Color:Colors.black,
                      // leading: Icon(Icons.message),.

                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Test ${index + 1}',
                            style: const TextStyle(
                                color: const Color(
                                  0xff111128,
                                ),
                                fontWeight: FontWeight.w700),
                          ),
                          Image.asset(
                            "assets/play.png",
                            height: 33,
                            width: 33,
                          )
                        ],
                      ),
                      subtitle: Text("Date ${index + 17} Apr 2022")),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
