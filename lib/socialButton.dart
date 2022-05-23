// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({Key? key}) : super(key: key);

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 35,
                width: 35,
                child: Image.asset(
                  "assets/vector3x.png",
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                "17k",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
