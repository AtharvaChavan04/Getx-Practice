import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .2,
      width: Get.width * .8,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: const Text('GetX Height and Width'),
      ),
    );
  }
}
