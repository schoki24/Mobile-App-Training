import 'package:flutter/material.dart';
import 'package:todo/screens/Gofit.dart';
import 'package:todo/screens/Home.dart';
import 'package:todo/screens/Intro.dart';
import 'package:todo/screens/PlantLanding.dart';
import 'package:todo/screens/Travel.dart';
import 'package:todo/screens/Travel/Intro.travel.dart';
import 'package:todo/widgets/Travel/PopularCard.travel.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: Home() ,
      home: IntroTravel(),
    );
  }
}
