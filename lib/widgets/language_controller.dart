import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageController extends StatelessWidget {
  const LanguageController({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
            onPressed: () {
              Get.updateLocale(Locale('en', 'US'));
            },
            child: Text('English')),
        SizedBox(width: 20),
        OutlinedButton(
            onPressed: () {
              Get.updateLocale(Locale('mr', 'IN'));
            },
            child: Text('Marathi')),
      ],
    );
  }
}
