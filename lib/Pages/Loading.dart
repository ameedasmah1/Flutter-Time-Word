import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:worldtime/services/World_Time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {


  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'Loading ...';
  void GetWorld_Data () async{
    WorldTime instance = WorldTime( 'America', 'abc',  'Africa/Juba',  '0');
    await instance.getData();
  Navigator.pushNamed(context, '/home',arguments:{
    'location': instance.location,
    'flag': instance.flag,
    'time': instance.time

  });
  //   setState(() {
  //     time= instance.time;
  //   });
  }
  @override
  void initState(){
    GetWorld_Data();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SpinKitFadingFour(
        color: Colors.white,
        size: 50.0,
      )
    );
  }
}
