import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  final emailField = TextEditingController();
  final nameField = TextEditingController();
  final passwordField = TextEditingController();
  RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REGISTER'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/login-page.png'),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextField(
                      controller: nameField,
                      decoration: InputDecoration(
                          hintText: 'Nama',
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    TextField(
                      controller: emailField,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    TextField(
                      controller: passwordField,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue[200]),
                            minimumSize: MaterialStateProperty.all(
                                const Size.fromHeight(45))),
                        onPressed: () {
                          var namaText = nameField.text;
                          var emailText = emailField.text;
                          var passwordText = passwordField.text;

                          controller.registerButtonController(
                              namaText, emailText, passwordText);
                        },
                        child: const Text(
                          'Buat akun',
                          style: TextStyle(color: Colors.white),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Sudah punya akun?"),
                        TextButton(
                            onPressed: () {
                              Get.offNamed(Routes.LOGIN);
                            },
                            child: const Text('Login'))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
