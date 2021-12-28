import 'package:flutter/material.dart';

import '../../constants.dart';

class FeaturedStatues extends StatelessWidget {
  const FeaturedStatues({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeatureStatueCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeatureStatueCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureStatueCard extends StatelessWidget {
  const FeatureStatueCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
