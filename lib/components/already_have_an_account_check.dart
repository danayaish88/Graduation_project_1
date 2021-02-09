import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_test/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAnAccountCheck({
    Key key, this.login, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login? "Don't have an account? " : "Already have an account? ",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login? "Sign Up": "Log In",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        )
      ],
    );
  }
}

