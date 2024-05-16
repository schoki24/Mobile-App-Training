import 'package:flutter/material.dart';
import 'package:todo/widgets/plant_landing/RecommendedPlants.dart';
import 'package:todo/widgets/plant_landing/SearchBar.plant.dart';

class PlantLanding extends StatelessWidget {
  const PlantLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discovery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              SearchBarPlant(),
              RecommendedPlants()
          ],
        ),
      ),
    );
  }
}
