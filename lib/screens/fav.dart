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
          return ListView.builder(
            itemCount: courses.favCoursesCount,
            itemBuilder: (context, index) {
              final course = courses.favCourses[index];
              return ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/detail', arguments: course);
                },
                leading: Image.network(course.imageUrl),
                title: Text(course.title),
                subtitle: Text(course.code),
                trailing: IconButton(
                  icon: (course.isFav
                      ? const Icon(Icons.favorite, color: Colors.red)
                      : const Icon(Icons.favorite_border)),
                  onPressed: () {
                    courses.updateCourse(course);
                  },
                ),
                tileColor: course.tileColor,
              );
            },
          );
        },
      ),
    );
  }
}
