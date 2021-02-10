import 'package:flutter/cupertino.dart';
import 'package:sign_in_test/Screens/Home/selection_title.dart';
import 'package:sign_in_test/components/adventure_card.dart';

class AdventuresCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SelectionTitle(
          text: "Adventures near you",
          press: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              AdventureCard(
                text: "Hiking",
                image: "assets/images/pyramids.jpg",
              ),
              AdventureCard(
                text: "Skiing",
                image: "assets/images/china.jpg",
              ),
              AdventureCard(
                text: "Carting",
                image: "assets/images/piza.jpg",
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
