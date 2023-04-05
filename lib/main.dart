import 'package:flutter/material.dart';
import 'package:video_new_app/pages/VideoscreenPage.dart';
import 'package:video_new_app/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const VideoListScreen(),
        'video_screen' : (context) => const VideoScreen(),
      },
    );
  }
}