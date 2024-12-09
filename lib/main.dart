import 'package:flutter/material.dart';
// import 'package:test/screens/login_screen.dart';
import 'package:test/screens/mockup_screen .dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Examination',
      theme: ThemeData.dark(),
      // home: LoginScreen(),
        home: DetailsScreen(),
      debugShowCheckedModeBanner: false, // This removes the debug banner
    );
  }
}
