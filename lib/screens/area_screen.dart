import 'package:flutter/material.dart';

class AreaScreen extends StatefulWidget {
  static const routename = 'area_screen';
  @override
  _AreaScreenState createState() => _AreaScreenState();
}

class _AreaScreenState extends State<AreaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text(
            'Area Screen',
          ),
        ),
      ),
    );
  }
}
