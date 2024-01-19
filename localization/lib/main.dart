import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/homepage.dart';
import 'package:localization/language.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Language(),
      locale: Locale('en', 'US'),
      home: MyHomePage(title: "Flutter Localization"),
    );
  }
}
