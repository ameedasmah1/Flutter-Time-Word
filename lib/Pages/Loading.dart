import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:worldtime/services/World_Time.dart';
class Loading extends StatefulWidget {


  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'Loading ...';
  void GetWorld_Data () async{
    WorldTime instance = WorldTime(location: 'America', flag: 'abc', url: 'Africa/Juba', time: '0');
    await instance.getData();
    setState(() {
      time = instance.time;
    });
  }
  @override
  void initState(){
    GetWorld_Data();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Text(time),
      ),
    );
  }
}
