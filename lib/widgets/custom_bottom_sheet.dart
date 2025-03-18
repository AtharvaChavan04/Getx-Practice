import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // Bottom Sheet using GetX
    return Card(
      elevation: 10,
      child: ListTile(
        title: Text("GetX Bottom Sheet"),
        subtitle: Text('Flutter Everywhere'),
        onTap: () {
          Get.bottomSheet(
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue[300],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.light_mode,
                    ),
                    title: Text('Enable Light Mode'),
                    onTap: () {
                      Get.changeTheme(ThemeData.light());
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.dark_mode,
                    ),
                    title: Text('Enable Dark Mode'),
                    onTap: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
