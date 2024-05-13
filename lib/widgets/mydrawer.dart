import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset('images/image.png'),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            ListTile(
              title: const Text('Favourite'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/fav');
              },
            ),
            ListTile(
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/contactus');
              },
            ),
          ],
        ),
      ),
    );
  }
}
