import 'package:flutter/material.dart';
import 'package:todo/widgets/plant_landing/PlantCard.dart';

class RecommendedPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align children to the start
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Text('Recommended',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Indoor', style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Outdoor', style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PlantCard(),
                  PlantCard(),
                  PlantCard(),
                  PlantCard(),
                ],
              ),
            ),
          ),
          // Add the Recent Viewed text
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Recent Viewed',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Add the image and text under Recent Viewed in a horizontal scroll view
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(4, (index) {
                return Row(
                  children: [
                    Container(
                      height: 115,
                      width: 95,
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: Image.network(
                        "https://i.etsystatic.com/13921532/r/il/e9d9c3/2368254191/il_1080xN.2368254191_hv54.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            'White Flower',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          'Indoor Ornamental Plant',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
            ),
          ),
          // Add the Latest Products text
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Latest Products',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Add the image and text under Latest Products
          Row(
            children: [
              Container(
                height: 105,
                width: 90,
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Image.network(
                  "https://th.bing.com/th/id/OIP.DRZC7YeNVWsS3mJaoLMxfgHaHa?w=1280&h=1280&rs=1&pid=ImgDetMain",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Title 1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Text(
                  //   'Description',
                  //   style: TextStyle(
                  //     fontSize: 14,
                  //     color: Colors.grey,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
          // Add the additional image and text
          Row(
            children: [
              Container(
                height: 105,
                width: 90,
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Image.network(
                  "https://i.etsystatic.com/12822997/r/il/fe523e/2162585624/il_600x600.2162585624_qymj.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Title 2',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
