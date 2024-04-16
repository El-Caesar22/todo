import 'package:flutter/material.dart';
import 'package:to_do/UI/Screens/Home/home.dart';
import 'package:to_do/UI/Utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.LightTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        Home.routename: (_) => Home(),
      },
      initialRoute: Home.routename,
    );
  }
}

