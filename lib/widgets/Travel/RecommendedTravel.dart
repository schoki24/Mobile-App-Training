import 'package:flutter/material.dart';
import 'package:todo/model/Places.model.dart';
import 'MediumTravelCard.dart';

class RecommendedTravel extends StatelessWidget {
  List<String> places = ["China", "India", "Indonesia", "Bhutan"];
  List<PlaceCardModel> placesList = [
    PlaceCardModel(
        img:
            "https://th.bing.com/th/id/R.369a70a04c2741111b05600abdcdecc8?rik=Qp6o1Ui1yCRyAw&pid=ImgRaw&r=0",
        description: "description 1",
        title: "Pink rose"),
    PlaceCardModel(
        img:
            "https://th.bing.com/th/id/OIP.SBzOf8zHYtEXDOetcU9o-gAAAA?rs=1&pid=ImgDetMain",
        description: "description 2",
        title: "Red rose"),
    PlaceCardModel(
        img:
            "https://cdn.shopify.com/s/files/1/0285/3663/5485/products/MystifyingDarknessBlackRoses_FlowerFix_Subscription_2000x.jpg?v=1627069928",
        description: "description 3",
        title: "Black rose"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended Places',
                  style: TextStyle(fontSize: 24),
                ),
                Text('View more'),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                children: placesList.map((PlaceCardModel el) {
                  return MediumTravelCard(
                    title: el.title,
                    description: el.description,
                    url: el.img,
                  );
                }).toList(),
              ),
            )
          ],
        ));
  }
}
