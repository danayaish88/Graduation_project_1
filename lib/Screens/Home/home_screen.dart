import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_test/Screens/Home/places_cards.dart';
import 'package:sign_in_test/Screens/Home/restaurants_cards.dart';
import 'package:sign_in_test/Screens/Home/selection_title.dart';
import 'package:sign_in_test/components/bottom_navigation_bar.dart';
import 'package:sign_in_test/components/place_card.dart';
import 'package:sign_in_test/constants.dart';

import 'adventure_cards.dart';
import 'categories.dart';
import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            SizedBox(height: 30),
            AdventuresCards(),
            SizedBox(height: 30),
            Categories(),
            SizedBox(height: 30),
            PlacesCards(),
            SizedBox(height: 30,),
            RestaurantsCards()
          ],
        ),
      )),
    );
  }
}



