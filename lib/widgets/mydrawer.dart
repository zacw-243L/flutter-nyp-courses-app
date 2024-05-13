import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

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
              child: Container(
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'NYP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
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
