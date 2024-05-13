import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact us'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/image.png'),
          ),
          const Text(
            'School of Engineering',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
                color: Colors.cyan,
                fontFamily: 'Raleway'),
          ),
          const Text('180 Ang Mo Kio Ave 8 Singapore 569830'),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
            child: Card(
              child: ListTile(
                leading: const Icon(Icons.phone, color: Colors.blue),
                title: const Text('6550 0400'),
                onTap: () => launchURL('tel:65500400'),
              ),
            ),
          ),
          const SizedBox(height: 2.5),
          const Padding(
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
    );
  }
}
