import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWithPicture extends StatelessWidget {
  const AppBarWithPicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/Rectangle 73@2x.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 100,
    );
  }
}
