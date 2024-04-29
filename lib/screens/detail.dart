import 'package:flutter/material.dart';
import '../models/course.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Course course = ModalRoute.of(context)?.settings.arguments as Course;
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              course.code,
              style: const TextStyle(fontSize: 28),
            ),
            Text(
              course.title,
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.center, // Add this line
            ),
            const SizedBox(height: 16),
            Padding(
              padding:
                  const EdgeInsets.all(13.0), // Add padding around the image
              child: Image.network(course.imageUrl),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                course.description,
                textAlign: TextAlign.justify, // Add this line
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Change the border radius here
                    ),
                  ),
                  onPressed: () async {
                    // Open YouTube
                    try {
                      await launchUrl(Uri.parse(course.youtube));
                    } catch (e) {
                      // Handle the error
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text('Could not launch ${course.website}')),
                      );
                    }
                  },
                  child: const Text(
                    'YouTube',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Change the border radius here
                    ),
                  ),
                  onPressed: () async {
                    // Open Website
                    try {
                      await launchUrl(Uri.parse(course.website));
                    } catch (e) {
                      // Handle the error
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text('Could not launch ${course.website}')),
                      );
                    }
                  },
                  child: const Text(
                    'Website',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
