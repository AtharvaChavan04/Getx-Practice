import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialogBox extends StatelessWidget {
  const CustomDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    //Dialog Box using GetX
    return Card(
      elevation: 10,
      child: ListTile(
        title: Text("GetX Dialog Box"),
        subtitle: Text('Flutter Everywhere'),
        onTap: () {
          Get.defaultDialog(
            title: 'Delete this chat',
            titlePadding: EdgeInsets.only(top: 10),
            middleText: "Are you sure you want to delete this chat?",
            contentPadding: EdgeInsets.all(10),
            confirm: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Yes')),
            cancel: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('No')),
          );
        },
      ),
    );
  }
}
