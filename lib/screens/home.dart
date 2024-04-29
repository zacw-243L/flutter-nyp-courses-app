import 'package:flutter/material.dart';
import '../models/courses_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NYP Courses'),
      ),
      body: ListView.builder(
        itemCount: CoursesRepository().allCoursesCount,
        itemBuilder: (context, index) {
          final course = CoursesRepository().allCourses[index];
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/detail', arguments: course);
            },
            leading: Image.network(course.imageUrl),
            title: Text(course.title),
            subtitle: Text(course.code),
          );
        },
      ),
    );
  }
}
