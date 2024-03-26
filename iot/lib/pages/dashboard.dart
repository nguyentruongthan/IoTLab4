// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

import '../models/switch.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});
  bool isNutNhan1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dash Board",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          _temperatureModel(),
          SizedBox(
            height: 20,
          ),
          _humidityModel(),
          SizedBox(
            height: 20,
          ),
          _lightModel(),
          SizedBox(
            height: 20,
          ),
          _nutNhan()
        ],
      ),
    );
  }

  Container _nutNhan() {
    return Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _nutNhan1(),
              _nutNhan2(),
            ],) 
        );
  }

  Column _nutNhan2() {
    return Column(
                children: [
                  Text("Nút nhấn 2", 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    )),
                    SizedBox(height: 10,),
                  SwitchExample(),
                ],
              );
  }

  Column _nutNhan1() {
    return Column(
                children: [
                  Text("Nút nhấn 1", 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    )),
                    SizedBox(height: 10,),
                  SwitchExample(),
                ],
              );
  }

  Container _lightModel() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.red.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              Icons.wb_sunny_outlined,
              size: 50,
              color: Colors.yellow.shade300,
            ),
          ),
          Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ánh sáng',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  Text('93 LUX',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600))
                ],
              ))
        ],
      ),
    );
  }

  Container _humidityModel() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.red.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              Icons.opacity_outlined,
              size: 50,
              color: Colors.blue.shade300,
            ),
          ),
          Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Độ ẩm',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  Text('76%',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600))
                ],
              ))
        ],
      ),
    );
  }

  Container _temperatureModel() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.red.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Icon(
              Icons.thermostat,
              size: 50,
              color: Colors.red.shade400,
            ),
          ),
          Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nhiệt độ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400)),
                  Text('32°C',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w600))
                ],
              )),
        ],
      ),
    );
  }
}
