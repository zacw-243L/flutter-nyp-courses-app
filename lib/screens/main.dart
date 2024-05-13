import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contact us'),
          backgroundColor: Colors.blueAccent,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/image.png'),
            ),
            Text(
              'School of Engineering',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                  color: Colors.cyan,
                  fontFamily: 'Raleway'),
            ),
            Text('180 Ang Mo Kio Ave 8 Singapore 569830'),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.blue),
                  title: Text('6550 0400'),
                ),
              ),
            ),
            SizedBox(height: 2.5),
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
              child: Card(
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blue),
                  title: Text('askNYP@nyp.edu.sg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
