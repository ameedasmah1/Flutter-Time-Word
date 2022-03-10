

import 'package:flutter/material.dart';
import 'package:worldtime/Pages/HomeScreen.dart';
import 'package:worldtime/Pages/Loading.dart';
import 'package:worldtime/Pages/LocationScreen.dart';

void main()=>runApp(MaterialApp(
  // home:Home() ,
  initialRoute: '/',
routes: {
'/':(context)=>Loading(),
  '/home':(context)=>Home(),
  '/location':(context)=>Location()
},
));

