import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
    print('Home - $data');

    String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDayTime'] ? Colors.lightBlue : Colors.indigo;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data = {'time': result['time'], 'location': result['location'], 'flag': result['flag'], 'isDayTime': result['isDayTime']};
                  });
                },
                icon: Icon(Icons.location_on),
                label: Text('Edit Location'),
                style: ButtonStyle(
                  iconColor: MaterialStateColor.resolveWith((states) => Colors.blueGrey.shade50),
                  foregroundColor: MaterialStateColor.resolveWith((states) => Colors.blueGrey.shade50),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(color: Colors.blueGrey.shade50, fontSize: 28, letterSpacing: 2),
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                data['time'],
                style: TextStyle(color: Colors.blueGrey.shade50, fontSize: 66),
              )
            ],
          ),
        ),
      )),
    );
  }
}
