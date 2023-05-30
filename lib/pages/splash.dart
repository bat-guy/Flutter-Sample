import 'package:flutter/material.dart';
import 'package:flutter_sample/services/world_time.dart';

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
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': time.location,
      'flag': time.flag,
      'time': time.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(40),
      child: Text(text),
    ));
  }
}
