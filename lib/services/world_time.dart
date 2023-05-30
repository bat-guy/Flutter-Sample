import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDayTime = false;

  WorldTime({required this.location, required this.time, required this.flag, required this.url});

  Future<void> getData() async {
    try {
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // print(jsonDecode(response.body));

      String dateTime = data['datetime'];
      String offsetHour = data['utc_offset'].substring(1, 3);
      String offsetMinute = data['utc_offset'].substring(4, 6);

      print('Offset - $offsetHour - $offsetMinute');

      DateTime now = DateTime.parse(dateTime);
      now = offsetHour == '-'
          ? now.subtract(Duration(hours: int.parse(offsetHour), minutes: int.parse(offsetMinute)))
          : now.add(Duration(hours: int.parse(offsetHour), minutes: int.parse(offsetMinute)));

      isDayTime = now.hour > 6 && now.hour < 20;
      time = DateFormat.jm().format(now);
    } catch (e) {
      time = 'Could not get the time data';
      print(e);
    }
  }
}
