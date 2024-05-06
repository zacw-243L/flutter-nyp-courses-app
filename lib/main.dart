import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/fav.dart';
import '../screens/detail.dart';
import 'package:provider/provider.dart';
import '../models/courses_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoursesRepository(),
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/detail': (context) => const DetailScreen(),
          '/fav': (context) => const FavScreen(),
        },
      ),
    );
  }
}
