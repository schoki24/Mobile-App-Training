import 'package:flutter/material.dart';
import 'package:todo/widgets/travel/PopularCard.travel.dart';

import '../../model/Places.model.dart';

class PopularTravel extends StatelessWidget {
  List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img:
            "https://th.bing.com/th/id/OIP.NzAnlFvml-swz-1bnBAFcwAAAA?rs=1&pid=ImgDetMain",
        description: "Wonderland of the world",
        title: "South Korea"),
    PlaceCardModel(
        img:
            "https://th.bing.com/th/id/OIP.Vbn6nWfcdYGznVFqRmKYeQHaE7?rs=1&pid=ImgDetMain",
        description: "Natural Paradise of Tokyo",
        title: "Japan"),
    PlaceCardModel(
        img:
            "https://th.bing.com/th/id/R.abb43cc8b9c357f2b78070787d539f73?rik=9jay8Nzrkz8PSQ&pid=ImgRaw&r=0",
        description: "Luxury Gateway of world",
        title: "Singapore"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Places',
                  style: TextStyle(fontSize: 22),
                ),
                Text('View more'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: placesList.map((PlaceCardModel el) {
                  return PopularCardTravel(place: el);
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
