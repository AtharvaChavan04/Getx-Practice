import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/utils/opacity_controller.dart';
import 'package:getx_practice/widgets/custom_bottom_sheet.dart';
import 'package:getx_practice/widgets/custom_container.dart';
import 'package:getx_practice/widgets/custom_dialog_box.dart';
import 'package:getx_practice/widgets/custom_floating_button.dart';
import 'package:getx_practice/widgets/language_controller.dart';
import 'package:getx_practice/widgets/navigation_card.dart';
import '../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  OpacityController opacityController = Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Dialog Box using GetX
              CustomDialogBox(),

              // Bottom Sheet using GetX
              CustomBottomSheet(),

              //How to navigate to next screen using GetX
              NavigationCard(
                  text: 'Go to the next Screen',
                  onPressed: () => Get.offNamed('/secondPage')),

              SizedBox(height: 20),
              // Using GetX Height and Width in Flutter
              CustomContainer(),
              SizedBox(height: 20),
              ListTile(
                title: Text('message'.tr),
                subtitle: Text('name'.tr),
              ),
              SizedBox(height: 20),
              LanguageController(),
              SizedBox(height: 30),
              // State managemet using GetX
              Obx(
                () => Container(
                  height: 200,
                  width: 200,
                  color:
                      Colors.red.withOpacity(opacityController.opacity.value),
                ),
              ),
              Obx(
                () => Slider(
                  value: opacityController.opacity.value,
                  onChanged: (value) {
                    opacityController.setOpacity(value);
                  },
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(
        icon: Icons.add,
        onPressed: () {
          Get.snackbar(
            'Getx',
            'State Management',
            icon: Icon(Icons.add_a_photo),
            onTap: (snap) {},
            backgroundColor: Colors.blueGrey,
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(milliseconds: 1800),
          );
        },
      ),
    );
  }
}
