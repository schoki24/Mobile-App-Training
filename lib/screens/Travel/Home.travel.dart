import 'package:flutter/material.dart';
import 'package:todo/widgets/Travel/RecommendedTravel.dart';
import 'package:todo/widgets/travel/Popular.travel.dart';

class HomeTravel extends StatelessWidget {
  const HomeTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [PopularTravel(), RecommendedTravel()],
          ),
        ));
  }
}
