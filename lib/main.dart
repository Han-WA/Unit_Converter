import 'package:conversion_app/screens/area_screen.dart';
import 'package:conversion_app/screens/mass_screen.dart';
import 'package:conversion_app/screens/volume_screen.dart';
import 'package:conversion_app/screens/weight_screen.dart';
import 'package:conversion_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF353b48),
        accentColor: Color(0xFFf7b731),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
        WeightScreen.routename: (ctx) => WeightScreen(),
        MassScreen.routename: (ctx) => MassScreen(),
        AreaScreen.routename: (ctx) => AreaScreen(),
        VolumeScreen.routename: (ctx) => VolumeScreen(),
      },
    );
  }
}
