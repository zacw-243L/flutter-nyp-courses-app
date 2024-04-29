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
        title: Text(
          course.title,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                course.code,
                style: const TextStyle(fontSize: 26),
              ),
            ),
            Text(
              course.title,
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.center, // Add this line
            ),
            const SizedBox(height: 8),
            Padding(
              padding:
                  const EdgeInsets.all(10.0), // Add padding around the image
              child: Image.network(course.imageUrl),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                course.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 14), // Add this line
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
                    final scaffoldMessenger = ScaffoldMessenger.of(
                        context); // Store the ScaffoldMessenger here
                    try {
                      await launchUrl(Uri.parse(course.youtube));
                    } catch (e) {
                      // Handle the error
                      scaffoldMessenger.showSnackBar(
                        // Use the stored ScaffoldMessenger
                        SnackBar(
                          content: Text('Could not launch ${course.youtube}'),
                        ),
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
                    final scaffoldMessenger = ScaffoldMessenger.of(
                        context); // Store the ScaffoldMessenger here
                    try {
                      await launchUrl(Uri.parse(course.website));
                    } catch (e) {
                      // Handle the error
                      scaffoldMessenger.showSnackBar(
                        // Use the stored ScaffoldMessenger
                        SnackBar(
                          content: Text('Could not launch ${course.website}'),
                        ),
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
