import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.purple,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 350,
            width: 300,
            margin: EdgeInsets.only(bottom: 16),
            child: Image.network(
              "https://th.bing.com/th/id/OIP.hgN-hk3YM9z8rsUaS02j-wHaHa?w=201&h=201&c=7&r=0&o=5&dpr=1.5&pid=1.7",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Indoor',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white, // Set text color to white
            ),
          ),
          Text(
            'Daisy',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white, // Set text color to white
            ),
          ),
        ],
      ),
    );
  }
}
