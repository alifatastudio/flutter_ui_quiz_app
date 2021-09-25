import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_quiz_app/constants.dart';
import 'package:flutter_ui_quiz_app/screens/quiz/components/progress_bar.dart';
import 'package:flutter_ui_quiz_app/screens/quiz/components/question_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/icons/bg.svg', fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: defaultPadding),
              Expanded(
                child: QuestionCard(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
