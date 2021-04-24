import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:nlw5/core/app_colors.dart';
import 'package:nlw5/core/app_text_styles.dart';

class AnswerModel {
  final String? title;
  final bool isRight;
  AnswerModel({this.isRight = false, this.title});

  Color get selectedColorRight =>
      isRight ? AppColors.darkGreen : AppColors.darkRed;

  Color get selectedBorderRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get selectedColorCardRight =>
      isRight ? AppColors.lightGreen : AppColors.lightRed;

  Color get selectedBorderCardRight =>
      isRight ? AppColors.green : AppColors.red;

  TextStyle get selectedTextStyleRight =>
      isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get selectedIconRight => isRight ? Icons.check : Icons.close;

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnswerModel.fromJson(String source) =>
      AnswerModel.fromMap(json.decode(source));
}
