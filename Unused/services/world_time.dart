
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class WorldTime {
  String location; //location name for ui
  late String time; // the time in that location
  String flag; // url to asset flag icon
  String url; // location control for api endpoint
  late bool isDaytime; // true or false

  WorldTime({ required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try{
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      //print(data);

      //get property from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      //print(datetime);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      isDaytime = now.hour >6 && now.hour < 15? true : false;

      time = DateFormat.jm().format(now);      
    }

    catch (e) {
      print('caught error: $e');
      time = 'could not get timedata';

    }

    

  }
}

