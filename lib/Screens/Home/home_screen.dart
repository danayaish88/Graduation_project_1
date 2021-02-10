import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_test/Screens/Home/selection_title.dart';
import 'package:sign_in_test/components/bottom_navigation_bar.dart';
import 'package:sign_in_test/constants.dart';

import 'adventure_cards.dart';
import 'categories.dart';
import 'header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
            SelectionTitle(
              text: "Places recommended for you",
              press: (){},
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryLightColor,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    PlaceCard(),
                    PlaceCard()
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            SelectionTitle(
              text: "Restaurants recommended for you",
              press: (){},
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kPrimaryLightColor,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    PlaceCard(),
                    PlaceCard()
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class PlaceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:Image(
                  image: AssetImage("assets/images/pyramids.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Sama Nablus",
                style: TextStyle(fontSize: 16, color: Colors.black),
                maxLines: 2,
              ),
              Text(
                "Park",
                style: TextStyle(
                    fontSize: 14, color: Colors.black45
                ),
              )
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.location_on,
              size: 30,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}

