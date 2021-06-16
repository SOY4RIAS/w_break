import 'package:flutter/material.dart';
import 'package:w_break/screens/about_screen.dart';
import 'package:w_break/screens/home_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WBreak',
      theme: ThemeData(primarySwatch: Colors.brown),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/about': (context) => AboutScreen()
      },
    );
  }
}
