import 'package:flutter/material.dart';
import 'package:flutter_sample/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png', time: ''),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png', time: ''),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png', time: ''),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png', time: ''),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png', time: ''),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png', time: ''),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png', time: ''),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png', time: ''),
    WorldTime(url: 'Asia/Kolkata', location: 'Kolkata', flag: 'indonesia.png', time: ''),
  ];

  void updateTime(index) async {
    WorldTime time = locations[index];
    await time.getData();
    Navigator.pop(context, {
      'location': time.location,
      'flag': time.flag,
      'time': time.time,
      'isDayTime': time.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Choose A Location'),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
              child: Card(
                  child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              )),
            );
          },
        ));
  }
}
