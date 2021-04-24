import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nlw5/core/app_text_styles.dart';
import 'package:nlw5/core/core.dart';
import 'package:nlw5/models/answer_model.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;
  const AnswerWidget(
      {Key? key,
      required this.title,
      this.isRight = false,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnswerModel am = new AnswerModel(isRight: isRight, title: "s");
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(
              color: isSelected ? am.selectedColorCardRight : AppColors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.fromBorderSide(BorderSide(
                  color: isSelected
                      ? am.selectedBorderCardRight
                      : AppColors.border))),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: isSelected
                        ? am.selectedTextStyleRight
                        : AppTextStyles.body,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color:
                          isSelected ? am.selectedColorRight : AppColors.white,
                      borderRadius: BorderRadius.circular(500),
                      border: Border.fromBorderSide(BorderSide(
                          color: isSelected
                              ? am.selectedBorderRight
                              : AppColors.border))),
                  height: 24,
                  width: 24,
                  child: isSelected
                      ? Icon(
                          am.selectedIconRight,
                          size: 16,
                          color: Colors.white,
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
