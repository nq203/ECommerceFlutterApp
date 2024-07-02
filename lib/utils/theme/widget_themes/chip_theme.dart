import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ConsColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ConsColors.black),
    selectedColor: ConsColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ConsColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ConsColors.darkerGrey,
    labelStyle: TextStyle(color: ConsColors.white),
    selectedColor: ConsColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ConsColors.white,
  );
}
