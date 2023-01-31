import 'package:flutter/material.dart';
import 'package:real_estate_company/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_company/screen/home_screen.dart';
import 'package:real_estate_company/widget/main/main_section.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate Company',
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBgColor,
        canvasColor: kBgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme
            .of(context)
            .textTheme).apply(bodyColor: Colors.white).copyWith(
          bodyText1: const TextStyle(color: kBodyTextColor),
          bodyText2: const TextStyle(color: kBodyTextColor),
        ),
      ),
      home: const MainSection(),

    );
  }
}
