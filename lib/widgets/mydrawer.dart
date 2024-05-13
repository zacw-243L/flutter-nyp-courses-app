import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
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
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15, 5.0, 15),
              leading: const Icon(Icons.home, color: Colors.blue),
              title: const Text(
                'Home',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              tileColor: Colors.grey[870],
            ),
            Divider(
              height: 1,
              color: Colors.grey[300],
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15, 5.0, 15),
              leading: const Icon(Icons.favorite, color: Colors.red),
              title: const Text(
                'Favourite',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/fav');
              },
              tileColor: Colors.grey[870],
            ),
            Divider(
              height: 1,
              color: Colors.grey[300],
            ),
            ListTile(
              contentPadding: const EdgeInsets.fromLTRB(20.0, 15, 5.0, 15),
              leading: const Icon(Icons.contact_page, color: Colors.grey),
              title: const Text(
                'Contact Us',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/contactus');
              },
              tileColor: Colors.grey[870],
            ),
            Divider(
              height: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}
