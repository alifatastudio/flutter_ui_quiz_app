import 'package:flutter/material.dart';
import 'package:flutter_ui_quiz_app/constants.dart';
import 'package:flutter_ui_quiz_app/screens/quiz/components/option.dart';
import 'package:flutter_ui_quiz_app/screens/score/score_screen.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    // required this.question,
  }) : super(key: key);

  // final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding,
      ),
      width: double.infinity,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            "Pertanyaan ?",
            style: TextStyle(
              color: blackColor,
              fontSize: 16,
            ),
          ),
          SizedBox(height: defaultPadding),
          Option(),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScoreScreen()),
              );
            },
            child: Text("View Score"),
          ),
        ],
      ),
    );
  }
}
//       child: Column(
//         children: [
//           Text(
//             question.question,
//             style: Theme.of(context)
//                 .textTheme
//                 .headline6
//                 .copyWith(color: kBlackColor),
//           ),
//           SizedBox(height: kDefaultPadding / 2),
//           ...List.generate(
//             question.options.length,
//             (index) => Option(
//               index: index,
//               text: question.options[index],
//               press: () => _controller.checkAns(question, index),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }