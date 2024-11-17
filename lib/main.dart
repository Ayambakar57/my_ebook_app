import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:my_ebook_app/Pages/Register_page.dart'; // Assuming you're using GetX

void main() async {
  await GetStorage.init(); // Ensure GetStorage is initialized
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: RegisterPage(), // Replace with your initial page
    );
  }
}
