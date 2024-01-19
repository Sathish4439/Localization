import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/language.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({super.key, required this.title});

  updatelanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  final List locale = [
    {'name': 'English', 'locale': Locale('en', 'Us')},
    {'name': 'Hindi', 'locale': Locale('hi', 'IN')},
    {'name': 'French', 'locale': Locale('fr', 'CA')},
    {'name': 'Tamil', 'locale': Locale('tm', 'IN')},
  ];
  BuildDialogBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text("change_language".tr),
            content: Container(
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return TextButton(
                          onPressed: () {
                            updatelanguage(locale[index]['locale']);
                          },
                          child: Text(locale[index]['name']));
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        thickness: 0.5,
                        color: Colors.black,
                      );
                    },
                    itemCount: locale.length)),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("hello".tr),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    BuildDialogBox(context);
                  },
                  child: Text("change_language".tr))
            ],
          ),
        ));
  }
}
