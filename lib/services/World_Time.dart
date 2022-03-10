
import 'package:http/http.dart' ;
import 'package:intl/intl.dart';
import 'dart:convert';
class WorldTime {

  String location; // location name for UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint


  WorldTime( this.location, this.flag, this.url, this.time );

  Future <void> getData() async{
   try{
     var response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
     Map data = jsonDecode(response.body) ;

     String datetime = data['datetime'];
     String offset = data['utc_offset'].substring(1,3);
     DateTime now = DateTime.parse(datetime);
     now = now.add(Duration(hours: int.parse(offset)));

     print(data);
     time = DateFormat.jm().format(now);
     print('s, $time');
   }catch(err){
     time = 'could not get data';
   }
  }
}