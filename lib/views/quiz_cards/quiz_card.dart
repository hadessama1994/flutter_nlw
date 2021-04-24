import 'package:flutter/material.dart';
import 'package:nlw5/core/core.dart';
import 'package:nlw5/shared/widgets/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final String progress;
  final double percent;
  final String image;
  const QuizCardWidget(
      {Key? key,
      required this.title,
      required this.progress,
      required this.percent,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(color: AppColors.border))),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                child: Image.asset(image),
              ),
              SizedBox(
                height: 24,
              ),
              Text(title, style: AppTextStyles.heading15),
              SizedBox(
                height: 24,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text(progress, style: AppTextStyles.body11)),
                      Expanded(
                          flex: 2,
                          child: ProgressIndicatorWidget(value: percent)),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
