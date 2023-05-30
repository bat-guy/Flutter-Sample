import 'package:flutter/material.dart';
import 'package:flutter_sample/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String text = 'Loading';

  void setUpWorldTime() async {
    WorldTime time = WorldTime(location: 'Kolkata', time: '', flag: 'india.png', url: 'Asia/Kolkata');
    await time.getData();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'location': time.location,
        'flag': time.flag,
        'time': time.time,
        'isDayTime': time.isDayTime,
      });
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.blue,
        body: Padding(
          padding: EdgeInsets.fromLTRB(0, 320, 0, 0),
          child: Column(
            children: [
              Text(
                'World Time',
                style: TextStyle(fontSize: 40, fontFamily: 'Montserrat', fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              SpinKitWave(
                color: Colors.white,
                size: 50.0,
              ),
            ],
          ),
        ));
  }
}
