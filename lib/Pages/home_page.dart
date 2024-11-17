import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ebook_app/Controller/bottom_nav_ctr.dart';
import 'package:my_ebook_app/Menu/Genre.dart';
import 'package:my_ebook_app/Menu/Home.dart';
import 'package:my_ebook_app/Menu/Profile.dart';

class MainPage extends StatelessWidget {
  final BottomNavController bottomNavController = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 232, 188, 121), // Main background color
        child: Obx(() {
          return IndexedStack(
            index: bottomNavController.selectedIndex.value,
            children: [
              HomeScreen(),
              GenrePage(),
              ProfilePage(),
            ],
          );
        }),
      ),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeIndex,
          backgroundColor: Color.fromARGB(255, 232, 188, 121), 
          selectedItemColor: Colors.white, 
          unselectedItemColor: Colors.black, 
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Genre'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        );
      }),
    );
  }
}
