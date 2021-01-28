import 'package:conversion_app/screens/area_screen.dart';
import 'package:conversion_app/screens/mass_screen.dart';
import 'package:conversion_app/screens/volume_screen.dart';
import 'package:conversion_app/screens/weight_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget commonMaterialButton(String name, String routeName) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 27.0),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 7,
        color: Theme.of(context).primaryColor,
        child: MaterialButton(
          padding: EdgeInsets.all(17),
          minWidth: 320,
          onPressed: () {
            Navigator.pushNamed(context, routeName);
          },
          child: Text(
            name,
            style: TextStyle(
              // color: Theme.of(context).accentColor,
              color: Colors.white,
              fontFamily: 'Tagu',
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'မြန်မာ ~ အင်္ဂလိပ်',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Theme.of(context).primaryColor,
                fontFamily: 'Waso',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ယူနစ် တွက်စက်',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Theme.of(context).primaryColor,
                fontFamily: 'Waso',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            commonMaterialButton(
                'အလေးချိန် ပြောင်းခြင်း', WeightScreen.routename),
            commonMaterialButton('ဒြပ်ထု ပြောင်းခြင်း', MassScreen.routename),
            commonMaterialButton('ဧရိယာ ပြောင်းခြင်း', AreaScreen.routename),
            commonMaterialButton('ထုထည် ပြောင်းခြင်း', VolumeScreen.routename),
          ],
        ),
      ),
    );
  }
}
