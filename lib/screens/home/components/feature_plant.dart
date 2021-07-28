import 'package:flutter/material.dart';

import '../../../constrants.dart';
class FeaturePlant extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(image: "assets/images/bottom_img_1.png", press: (){}),
          FeaturePlantCard(image: "assets/images/bottom_img_2.png", press: (){}),
          FeaturePlantCard(image: "assets/images/bottom_img_1.png", press: (){}),
        ],
      ),
    );
  }
}
class FeaturePlantCard extends StatelessWidget{
  final String image;
  final Function press;
  FeaturePlantCard({required this.image, required this.press});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin:EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding/2,
        ),
        width: size.width*0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    image
                )
            )
        ),
      ),
    );
  }
}
