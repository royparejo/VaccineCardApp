import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vaccine_card_app/presentation/common/util/my_colors.dart';

final baseTheme = ThemeData.light();

final textTheme = GoogleFonts.urbanistTextTheme(baseTheme.textTheme);

final elevatedButtonStyle = ElevatedButton.styleFrom(
  padding: EdgeInsets.all(17),
  backgroundColor: MyColors.accentColor,
  foregroundColor: Colors.white,
  textStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
  // textStyle: TextStyle(fontWeight: FontWeight.bold),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
);

final flatButtonStyle = elevatedButtonStyle.copyWith(
  backgroundColor: WidgetStatePropertyAll(Colors.white),
  foregroundColor: WidgetStatePropertyAll(Colors.black),
);

final dangerButtonStyle = elevatedButtonStyle.copyWith(
  backgroundColor: WidgetStatePropertyAll(MyColors.dangerColor),
  foregroundColor: WidgetStatePropertyAll(Colors.white),
);

final inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(12),
  borderSide: BorderSide.none,
);
final inputDecorationTheme = InputDecorationTheme(
  filled: true,
  fillColor: Colors.white,

  hintStyle: const TextStyle(
    color: Color(0xFFC7CDD5),
    // fontSize: 15,
    fontWeight: FontWeight.w400,
  ),

  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),

  border: inputBorder,
  enabledBorder: inputBorder,
  focusedBorder: inputBorder,
  errorBorder: inputBorder.copyWith(
    borderSide: BorderSide(color: MyColors.dangerColor),
  ),
  focusedErrorBorder: inputBorder.copyWith(
    borderSide: const BorderSide(color: MyColors.dangerColor, width: 2),
  ),
);

final ligthTheme = baseTheme.copyWith(
  scaffoldBackgroundColor: MyColors.backgroundColor,
  textTheme: textTheme,
  colorScheme: ColorScheme.fromSeed(seedColor: MyColors.accentColor),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    // titleTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
    titleTextStyle: textTheme.titleLarge?.copyWith(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    centerTitle: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(style: elevatedButtonStyle),
  cardTheme: CardThemeData(color: Colors.white),
  inputDecorationTheme: inputDecorationTheme,
);
