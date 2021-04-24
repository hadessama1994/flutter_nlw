import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nlw5/models/level_button_model.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({Key? key, required this.label})
      : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    LevelButtonModel lbm = LevelButtonModel(label);
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: lbm.color,
            border: Border.fromBorderSide(BorderSide(color: lbm.borderColor))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 6),
          child: Text(
            label,
            style: GoogleFonts.notoSans(color: lbm.fontColor, fontSize: 14),
          ),
        ));
  }
}
