import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/mydrawer.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

Future<void> launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Contact us'),
        backgroundColor: Colors.blueAccent,
      ),
      body: FooterView(
        footer: Footer(
          backgroundColor: Colors.grey,
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
          child: const Center(child: Text('Made By: Ong Zachary (221252K)')),
        ),
        flex: 2,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0),
              const SizedBox(height: 20.0),
              const SizedBox(height: 20.0),
              const SizedBox(height: 20.0),
              const CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/image.png'),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'School of Engineering',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32.0,
                    color: Colors.lightBlueAccent,
                    fontFamily: 'Raleway'),
              ),
              const Text(
                '180 Ang Mo Kio Ave 8 Singapore 569830',
                style: TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                child: Card(
                  color: Colors.blue,
                  child: ListTile(
                    leading: const Icon(Icons.phone, color: Colors.white),
                    title: const Text('6550 0400',
                        style: TextStyle(color: Colors.black)),
                    onTap: () => launchURL('tel:65500400'),
                  ),
                ),
              ),
              const SizedBox(height: 2.5),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                child: Card(
                  color: Colors.blue,
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.white),
                    title: const Text('askNYP@nyp.edu.sg',
                        style: TextStyle(color: Colors.black)),
                    onTap: () => launchURL('mailto:askNYP@nyp.edu.sg'),
                  ),
                ),
              ),
              const SizedBox(height: 2.5),
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0, 0, 5.0, 0),
                child: Card(
                  color: Colors.blue,
                  child: ListTile(
                    leading: const Icon(Icons.place, color: Colors.white),
                    title: const Text('180 Ang Mo Kio Ave 8'),
                    onTap: () => launchURL(
                        'https://www.google.com/maps/place/Nanyang+Polytechnic/@1.3812389,103.849375,15.25z/data=!3m1!5s0x31da16e96f516fcd:0x733bf8a18a836c59!4m6!3m5!1s0x31da16eb64b0249d:0xe5f10ff680eed942!8m2!3d1.37995!4d103.8489487!16zL20vMDN4Njkz?entry=ttu'),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
