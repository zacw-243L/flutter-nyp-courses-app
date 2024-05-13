import 'package:flutter/material.dart';
import '../models/courses_repository.dart';
import '../widgets/mydrawer.dart';
import 'package:provider/provider.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Favourite Courses'),
        backgroundColor: Colors.blue,
      ),
      body: Consumer<CoursesRepository>(
        builder: (context, courses, child) {
          return Container(
            color: Colors.black87,
            child: ListView.builder(
              itemCount: courses.favCoursesCount,
              itemBuilder: (context, index) {
                final course = courses.favCourses[index];
                return ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail', arguments: course);
                  },
                  leading: Image(image: course.imageUrl),
                  title: Text(course.title,
                      style: const TextStyle(color: Colors.white)),
                  subtitle: Text(course.code,
                      style: const TextStyle(color: Colors.white60)),
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
