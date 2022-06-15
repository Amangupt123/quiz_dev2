// ignore_for_file: unnecessary_const

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
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Card(child: ListTile(title: Text('Trasaction History'))),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blueAccent),
          ),
          height: 70,
          child: TabBar(
            indicatorColor: Colors.black,
            indicatorWeight: 3,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            controller: _controller,
            tabs: const [
              Tab(text: 'Redeemed'),
              Tab(text: 'Redeemed'),
            ],
          ),
        ),
        Container(
          height: 100.0,
          child: TabBarView(
            controller: _controller,
            children: <Widget>[
              Column(
                children: [
                  Card(child: Text("yes1")),
                  Card(child: Text("yes2")),
                ],
              ),
              Column(
                children: [
                  Card(child: Text("no1")),
                  Card(child: Text("no2")),
                ],
              ),
            ],
          ),
        ),
        // Card(
        //   child: ListTile(
        //     title: const Text('Some more information'),
        //   ),
        // ),
        // ElevatedButton(
        //   //  color: Theme.of(context).primaryColor,
        //   onPressed: () {}, child: null,
        //   // child: const Text(
        //   //   'Search for POIs',
        //   //   style: const TextStyle(color: Colors.white),
        //   // ),
        // ),
      ],
    );
  }
}
