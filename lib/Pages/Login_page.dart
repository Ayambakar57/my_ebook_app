import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ebook_app/Controller/login_controller.dart';


class LoginPage extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          return Column(
            children: [
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(labelText: 'Username'),
              ),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 20),
              _loginController.isLoading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _loginController.loginUser(
                          _usernameController.text,
                          _passwordController.text,
                        );
                      },
                      child: Text('Login'),
                    ),
            ],
          );
        }),
      ),
    );
  }
}
