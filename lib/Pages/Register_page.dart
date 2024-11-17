import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ebook_app/Controller/register_controller.dart';
import 'package:my_ebook_app/Pages/Login_page.dart';


class RegisterPage extends StatelessWidget {
  final RegisterController _registerController = Get.put(RegisterController());

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
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
              TextField(
                controller: _fullNameController,
                decoration: InputDecoration(labelText: 'Full Name'),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 20),
              _registerController.isLoading.value
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _registerController.registerUser(
                          _usernameController.text,
                          _passwordController.text,
                          _fullNameController.text,
                          _emailController.text,
                        );
                        Get.to(LoginPage());
                      },
                      child: Text('Register'),
                      
                    ),
                    ElevatedButton(onPressed: () {
                      Get.to(LoginPage());
                    }, child: Text('Already Have an account? LogIn'))

            ],
          );
        }),
      ),
    );
  }
}
