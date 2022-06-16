import 'package:flutter/material.dart';

class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  late String _selectedLocation;
  String? Value; // Option 2
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: DropdownButton(
            hint:
                Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (Value) {
              setState(() {
                _selectedLocation = Value;
              });
            },
            items: _locations.map((location) {
              return DropdownMenuItem(
                child: new Text(location),
                value: location,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
