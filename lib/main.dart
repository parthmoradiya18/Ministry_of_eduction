
import 'package:flutter/material.dart';
import 'package:ministry_of_eduction/Swayam_Page.dart';
import 'package:ministry_of_eduction/Swayam_web_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Sawayam_Page(),
        'Swayam_web': (context) => const Swayam_web_page(),
      },
    ),
  );
}