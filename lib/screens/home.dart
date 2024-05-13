import 'package:flutter/material.dart';
import '../models/courses_repository.dart';
import '../widgets/mydrawer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('NYP Courses'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              Navigator.pushNamed(context, '/fav');
            },
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: Consumer<CoursesRepository>(
        builder: (context, courses, child) {
          return Container(
            color: Colors.black87,
            child: ListView.builder(
              itemCount: courses.allCoursesCount,
              itemBuilder: (context, index) {
                final course = courses.allCourses[index];
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail', arguments: course);
                  },
                  leading: Image(image: course.imageUrl),
                  title: Text(course.title,
                      style: const TextStyle(color: Colors.white)),
                  subtitle: Text(course.code,
                      style: const TextStyle(color: Colors.white)),
                  trailing: IconButton(
                    icon: (course.isFav
                        ? const Icon(Icons.favorite, color: Colors.red)
                        : const Icon(
                            Icons.favorite_border,
                            color: Colors.white30,
                          )),
                    onPressed: () {
                      courses.updateCourse(course);
                    },
                  ),
                  tileColor: course.tileColor,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
