// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TileBid extends StatefulWidget {
  bool selected;
  String title;
  String titles;
  int id;
  Function onClick;

  Color selectedColor;
  TileBid({
    Key? key,
    this.selected = false,
    this.title = "NULL",
    this.titles = "NULL",
    //this.fontsize = 15,
    required this.onClick,
    required this.id,
    required this.selectedColor,
  }) : super(key: key);

  @override
  State<TileBid> createState() => _TileBidState();
}

class _TileBidState extends State<TileBid> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onClick();
        setState(() {});
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,
          width: 360,
          // margin: EdgeInsets.symmetric(horizontal: 10),
          //padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          decoration: BoxDecoration(
            color: widget.selected ? widget.selectedColor : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: widget.selected ? widget.selectedColor : Colors.grey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Color(0xffF4F6F8),
                    child: Text(
                      widget.titles,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.title,
                //widget.title,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000)
                    //color: widget.selected ? Colors.white : Colors.grey,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
