import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController {
  RxString imagePath = ''.obs;
  Rx<Uint8List?> imageBytes = Rx<Uint8List?>(null);

  Future<void> getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      if (kIsWeb) {
        imageBytes.value = await image.readAsBytes();
      } else {
        imagePath.value = image.path.toString();
      }
    }
  }
}
