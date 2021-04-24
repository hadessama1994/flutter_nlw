import 'package:flutter/material.dart';
import 'package:nlw5/controller/home_controller.dart';
import 'package:nlw5/core/core.dart';
import 'package:nlw5/models/user_model.dart';
import 'package:nlw5/views/score_card/score_card.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  AppBarWidget({required this.user})
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    height: 161,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.maxFinite,
                    decoration: BoxDecoration(gradient: AppGradients.linear),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: [
                            TextSpan(
                                text: user.name, style: AppTextStyles.titleBold)
                          ],
                        )),
                        Container(
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: NetworkImage(user.photoUrl))),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0, 1.2),
                    child: ScoreCardWidget(),
                  )
                ],
              ),
            ));
}
