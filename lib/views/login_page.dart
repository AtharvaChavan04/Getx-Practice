import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/utils/login_controller.dart';
import 'package:getx_practice/widgets/custom_app_bar.dart';
import 'package:getx_practice/widgets/custom_textform_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomTextformField(
              hintText: 'Email',
              controller: controller.emailController.value,
            ),
            SizedBox(height: 20),
            CustomTextformField(
              hintText: 'Password',
              controller: controller.passwordController.value,
            ),
            SizedBox(height: 20),
            Obx(() {
              return InkWell(
                onTap: () {
                  controller.loginApi();
                },
                child: controller.loading.value
                    ? CircularProgressIndicator()
                    : Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        height: 40,
                        child: Center(
                          child: Text('Login'),
                        ),
                      ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
