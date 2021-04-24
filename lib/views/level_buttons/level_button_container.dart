import 'package:flutter/material.dart';

import 'level_button.dart';

class LevelButtonContainer extends StatelessWidget {
  const LevelButtonContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LevelButtonWidget(
            label: "Fácil",
          ),
          LevelButtonWidget(
            label: "Médio",
          ),
          LevelButtonWidget(
            label: "Difícil",
          ),
          LevelButtonWidget(
            label: "Perito",
          ),
        ],
      ),
    );
  }
}
