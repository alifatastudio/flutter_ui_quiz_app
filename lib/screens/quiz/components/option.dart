import 'package:flutter/material.dart';
import 'package:flutter_ui_quiz_app/constants.dart';

class Option extends StatelessWidget {
  const Option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: defaultPadding),
        padding: EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "A. Pilihan Jawaban 01",
              style: TextStyle(
                color: Colors.green,
                fontSize: 16,
              ),
            ),
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.green),
              ),
              child: Icon(
                Icons.done,
                size: 16,
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

              //  Container(
//                     height: 26,
//                     width: 26,
//                     decoration: BoxDecoration(
//                       color: getTheRightColor() == kGrayColor
//                           ? Colors.transparent
//                           : getTheRightColor(),
//                       borderRadius: BorderRadius.circular(50),
//                       border: Border.all(color: getTheRightColor()),
//                     ),
//                     child: getTheRightColor() == kGrayColor
//                         ? null
//                         : Icon(getTheRightIcon(), size: 16),
//                   )
//                 ],
//               ),
//             ),
//           );
//         });
//   }
// }