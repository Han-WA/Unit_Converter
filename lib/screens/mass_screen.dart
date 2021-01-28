import 'package:flutter/material.dart';

class MassScreen extends StatefulWidget {
  static const routename = 'mass_screen';
  @override
  _MassScreenState createState() => _MassScreenState();
}

class _MassScreenState extends State<MassScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text(
            'Mass Screen',
          ),
        ),
      ),
    );
  }
}
