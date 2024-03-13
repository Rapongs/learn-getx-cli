import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final emailField = TextEditingController();
  final passwordField = TextEditingController();
  LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN'),
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
                          var emailText = emailField.text;
                          var passwordText = passwordField.text;

                          controller.loginButtonController(
                              emailText, passwordText);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Tidak punya akun?"),
                        TextButton(
                            onPressed: () {
                              Get.offNamed(Routes.REGISTER);
                            },
                            child: const Text('Daftar'))
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
