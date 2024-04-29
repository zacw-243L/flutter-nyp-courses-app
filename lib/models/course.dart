import 'package:flutter/material.dart';

class Course {
  final String code;
  final String title;
  final String imageUrl;
  final String description;
  final String youtube;
  final String website;
  final Color tileColor;

  Course({
    required this.code,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.youtube,
    required this.website,
    this.tileColor = Colors.white, // Set a default value
  });
}
