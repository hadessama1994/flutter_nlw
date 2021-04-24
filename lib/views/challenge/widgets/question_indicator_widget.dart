import 'package:flutter/material.dart';
import 'package:nlw5/core/core.dart';
import 'package:nlw5/shared/widgets/progress_indicator_widget.dart';

class QuestionIndicator extends StatefulWidget {
  QuestionIndicator({Key? key}) : super(key: key);

  @override
  _QuestionIndicatorState createState() => _QuestionIndicatorState();
}

class _QuestionIndicatorState extends State<QuestionIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Questão 04",
                  style: AppTextStyles.body,
                ),
                Text(
                  "de 12",
                  style: AppTextStyles.body,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            ProgressIndicatorWidget(value: .4)
          ],
        ),
      ),
    );
  }
}
