import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_quiz_app/constants.dart';
import 'package:flutter_ui_quiz_app/screens/welcome/welcome_screen.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  _ScoreScreenState createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            'assets/icons/bg.svg',
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Full Name",
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 25,
                ),
              ),
              Text(
                "Score:",
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 25,
                ),
              ),
              Text(
                "80",
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 60,
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultPadding),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(defaultPadding * 0.75),
                    decoration: BoxDecoration(
                      gradient: primaryGradient,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text(
                      "Back to Home",
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
