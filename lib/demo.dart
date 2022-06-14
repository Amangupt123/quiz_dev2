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
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('TestProject'),
      // ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: const Text('Trasaction History'),
              //title: const Text('Some information'),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey),
            height: 70,
            child: TabBar(
              unselectedLabelColor: Colors.black,

              indicatorColor: Colors.amber,

              //  labelColor: Colors.white,
              controller: _controller,
              tabs: [
                Tab(
                  //icon: const Icon(Icons.home),
                  text: 'Credit',
                ),
                // VerticalDivider(
                //   color: Colors.black,
                //   thickness: 1,
                // ),
                Tab(
                  // icon: const Icon(Icons.my_location),
                  text: 'Redeemed',
                ),
              ],
            ),
          ),
          Container(
            height: 60.0,
            child: TabBarView(
              controller: _controller,
              children: const <Widget>[
                Card(child: Text("yes")),
                Card(child: Text("no")),
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
      ),
    );
  }
}
