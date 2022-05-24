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
          title: Text("Practice Quiz"),
          toolbarHeight: 100,
          backgroundColor: Color(0xffF8922D),
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
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.message),
                  title: Text('item ${index}'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
