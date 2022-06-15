import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String text;
  List<String>? xAxis;
  List<String>? yAxis;

  int financial;
  final charts.Color color;
  dynamic per;

  BarChartModel({
    required this.text,
    required this.financial,
    required this.color,
    required this.per,
    this.xAxis,
    this.yAxis,
  });
}

class pics extends StatefulWidget {
  const pics({Key? key}) : super(key: key);

  @override
  State<pics> createState() => _picsState();
}

class _picsState extends State<pics> {
  final List<BarChartModel> data = [
    BarChartModel(
        text: "A",
        financial: 15,
        color: charts.ColorUtil.fromDartColor(Colors.red),
        per: 15),
    BarChartModel(
        text: "B",
        financial: 100,
        color: charts.ColorUtil.fromDartColor(Colors.green),
        per: 15),
    BarChartModel(
        text: "C",
        financial: 8,
        color: charts.ColorUtil.fromDartColor(Colors.red),
        per: 15),
    BarChartModel(
        text: "c",
        financial: 22,
        color: charts.ColorUtil.fromDartColor(Colors.red),
        per: 15),
    // BarChartModel(
    //   year: ".",
    //   financial: 200,
    //   color: charts.ColorUtil.fromDartColor(Colors.white),
    // ),
  ];
  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.text,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      ),
    ];
    var screenSize;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0),
      body: Container(
        //height: screenSize.height,
        //width: screenSize.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/top_header@3x.png"),
                  fit: BoxFit.fitWidth,
                ),
                // title: const Text("Bar Chart"),
                // centerTitle: true,
                // backgroundColor: Colors.green[700],
              ),
              // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              // child: charts.BarChart(
              //   series,
              //   animate: true,
            ),
          ],
        ),
      ),
    );
  }
}
