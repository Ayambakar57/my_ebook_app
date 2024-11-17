import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ebook_app/Pages/Login_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color.fromARGB(255, 232, 188, 121),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 232, 188, 121),
      body: Padding(
        padding: EdgeInsets.all(16.0), 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://foto.kontan.co.id/nB_kB6WGDnzSEzuxKLponNXJQlM=/smart/2022/11/15/686454468p.jpg',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Bocchi',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'NomNomShark@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 30),
             
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(LoginPage()); 
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
