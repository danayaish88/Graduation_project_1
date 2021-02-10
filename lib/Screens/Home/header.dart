import 'package:flutter/cupertino.dart';
import 'package:sign_in_test/components/countries_drop_down.dart';

import '../../constants.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: size.width * 0.6,
          height: 50,
          decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.circular(29),
          ),
          child: CountriesDropDown(),
        ),
      ],
    );
  }
}

