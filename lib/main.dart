import 'package:flutter/material.dart';
import 'package:zoom_clone/responsive/mobile_screen_layout.dart';
import 'package:zoom_clone/responsive/responsive_layout_screen.dart';
import 'package:zoom_clone/responsive/web_screen_layout.dart';
import 'package:zoom_clone/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
        primaryColor: primaryColor,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Hind',
            color: Colors.white,
          ),
        ),
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
