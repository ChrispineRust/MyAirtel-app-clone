
import 'package:airtel_app/screens/navigation.dart';
import 'package:flutter/material.dart';
import 'package:airtel_app/screens/home.dart';
import 'screens/airtelmoney.dart';
import 'screens/services.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: 'Ubuntu',
        colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromRGBO(244, 0, 0, 1)),
        useMaterial3: true,
      ),
      home: const Navigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
