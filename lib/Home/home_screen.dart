import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'components/bottom_navbar.dart';
import 'components/featured_statues.dart';
import 'components/header_searchbox.dart';
import 'components/recomended_statue.dart';
import 'components/title_morebtn.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"), onPressed: () {}),
    );
  }
}


class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          RecomendsStatue(),
          TitleWithMoreBtn(title: "Featured Statues", press: () {}),
          FeaturedStatues(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}



