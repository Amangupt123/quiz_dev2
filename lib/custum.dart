import 'package:flutter/material.dart';

class custum extends StatefulWidget {
  const custum({Key? key}) : super(key: key);

  @override
  State<custum> createState() => _custumState();
}

class _custumState extends State<custum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          height: 30,
          width: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Text("yes"),
              ),
              // VerticalDivider(),
              // Text("no")
            ],
          ),
        ),
      ),
    );
  }
}
