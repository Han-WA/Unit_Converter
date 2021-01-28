import 'package:flutter/material.dart';

class WeightScreen extends StatefulWidget {
  static const routename = 'calculation_screen';

  @override
  _WeightScreenState createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  String number;
  String result = '1.23456789';
  String upperDropdownValue = 'Tar';
  String lowerDropdownValue = 'Pound';

  Widget ValueTextField() {
    return TextField(
      onChanged: (value) {
        number = value;
      },
      cursorColor: Colors.white,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: 'Value',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white,
            width: 3.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
      ),
    );
  }

  Widget UpperDropDownButton() {
    return DropdownButton(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 12.0, left: 15),
        child: Icon(
          Icons.arrow_downward,
          color: Colors.greenAccent,
        ),
      ),
      iconSize: 24,
      focusColor: Colors.greenAccent,
      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
      dropdownColor: Theme.of(context).primaryColor,
      underline: Container(
        height: 2,
        color: Colors.greenAccent,
      ),
      value: upperDropdownValue,
      onChanged: (value) {
        setState(() {
          upperDropdownValue = value;
        });
      },
      items: ['Tar', 'Guite', 'Pound', 'Yway']
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0, left: 15),
                child: Text(e),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget LowerDropDownButton() {
    return DropdownButton(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 12.0, left: 15),
        child: Icon(
          Icons.arrow_downward,
          color: Colors.greenAccent,
        ),
      ),
      iconSize: 24,
      focusColor: Colors.greenAccent,
      style: TextStyle(color: Colors.greenAccent, fontSize: 20),
      dropdownColor: Theme.of(context).primaryColor,
      underline: Container(
        height: 2,
        color: Colors.greenAccent,
      ),
      value: lowerDropdownValue,
      onChanged: (value) {
        setState(() {
          lowerDropdownValue = value;
        });
      },
      items: ['Tar', 'Guite', 'Pound', 'Yway']
          .map(
            (e) => DropdownMenuItem(
              value: e,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0, left: 15),
                child: Text(e),
              ),
            ),
          )
          .toList(),
    );
  }

  void buttonClick(String myanNumber) {
    print(myanNumber);
  }

  Widget commonOutlineButton(String number) {
    return Expanded(
      child: OutlineButton(
        onPressed: () => buttonClick(number),
        splashColor: Colors.greenAccent,
        padding: EdgeInsets.all(25),
        child: Text(
          number,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: "Tagu",
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Text(
              'အလေးချိန် ပြောင်းခြင်း',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                fontFamily: 'Waso',
                color: Colors.white,
              ),
            ), // Weight Conversion Heading
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 25, top: 26),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "တန်ဖိုး",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: 'Waso',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 170,
                        child: ValueTextField(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ယူနစ်",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Waso',
                            color: Colors.greenAccent,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 120,
                          child: UpperDropDownButton(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), //Row of Value & Unit
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 25),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ရလဒ်',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          fontFamily: 'Waso',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: 170,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25.0, top: 14),
                            child: Text(
                              result,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ယူနစ်",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Waso',
                            color: Colors.greenAccent,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 120,
                          child: LowerDropDownButton(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), //Row of Result & Unit
            SizedBox(
              height: 47,
            ), //Space between Rows and Calculator Numbers
            Container(
              height: 337,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      commonOutlineButton('7'),
                      commonOutlineButton('8'),
                      commonOutlineButton('9'),
                    ],
                  ),
                  Row(
                    children: [
                      commonOutlineButton('4'),
                      commonOutlineButton('5'),
                      commonOutlineButton('6'),
                    ],
                  ),
                  Row(
                    children: [
                      commonOutlineButton('1'),
                      commonOutlineButton('2'),
                      commonOutlineButton('3'),
                    ],
                  ),
                  Row(
                    children: [
                      commonOutlineButton('.'),
                      commonOutlineButton('0'),
                      commonOutlineButton('Del'),
                    ],
                  ),
                ],
              ),
            ), //Kepad
          ],
        ),
      ),
    );
  }
}
