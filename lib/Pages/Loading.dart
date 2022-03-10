import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'dart:convert';
class Loading extends StatefulWidget {


  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

void getData() async{
  var response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  var data = jsonDecode(response.body) ;
    print(data['title']);

  print('2');
   Future.delayed(const Duration(milliseconds: 4000),(){
print('3');
  });

  void data1 = await Future.delayed(const Duration(milliseconds: 3000),(){
    print('4');
  });
  print('6');

  print('7');
}


  @override
  void initState(){
    getData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading Screen'),
    );
  }
}
