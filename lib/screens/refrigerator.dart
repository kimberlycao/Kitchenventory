import 'package:flutter/material.dart';
import 'package:TracKit/Components/FoodList.dart';
import 'package:TracKit/Components/SearchBar.dart';
import 'package:TracKit/Services/APIUtils.dart';

class RefrigeratorScreen extends StatefulWidget {
  @override
  _RefrigeratorScreenState createState() => _RefrigeratorScreenState();
}

class _RefrigeratorScreenState extends State<RefrigeratorScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF2D3447),
      appBar: AppBar(
          title: Text("Refrigerator",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w100)),
          backgroundColor: Colors.transparent,
          elevation: 0),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            SearchBar(),
            SizedBox(height: screenHeight * 0.02),
            Expanded(
                child: Container(
                    child: FoodList(location: REFRIGERATOR_LOCATION_ID))),
          ],
        ),
      ),
    );
  }
}
