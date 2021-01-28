import 'package:flutter/material.dart';

class VolumeScreen extends StatefulWidget {
  static const routename = 'volume_screen';
  @override
  _VolumeScreenState createState() => _VolumeScreenState();
}

class _VolumeScreenState extends State<VolumeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Text(
            'Volume Screen',
          ),
        ),
      ),
    );
  }
}
