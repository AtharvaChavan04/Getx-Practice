import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/utils/counter_controller.dart';
import 'package:getx_practice/utils/image_picker_controller.dart';
import 'package:getx_practice/widgets/custom_app_bar.dart';
import 'package:getx_practice/widgets/custom_floating_button.dart';
import 'package:getx_practice/widgets/navigation_card.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final CounterController controller = Get.put(CounterController());
  final ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          NavigationCard(
            text: 'Go to the Previous Screen',
            onPressed: () => Get.offNamed('/homeScreen'),
          ),
          SizedBox(height: 10),
          NavigationCard(
            text: 'Go to the Login Screen',
            onPressed: () => Get.offNamed('/loginPage'),
          ),
          SizedBox(height: 30),
          Obx(() {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: kIsWeb
                      ? (imagePickerController.imageBytes.value != null
                          ? MemoryImage(imagePickerController.imageBytes.value!)
                          : null)
                      : (imagePickerController.imagePath.isNotEmpty
                          ? FileImage(
                              File(imagePickerController.imagePath.toString()))
                          : null),
                ),
                TextButton(
                  onPressed: () {
                    imagePickerController.getImage();
                  },
                  child: Text('Pick Image'),
                )
              ],
            );
          }),
          SizedBox(height: 50),
          Center(
            child: Obx(
              () => Text(
                controller.counter.toString(),
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: CustomFloatingButton(
        onPressed: () {
          controller.incrementController();
        },
        icon: Icons.add,
      ),
    );
  }
}
