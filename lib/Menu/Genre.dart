import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ebook_app/Widgets/genre_card.dart';


class GenrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final genres = [
      {'title': 'Science Fiction', 'icon': Icons.science},  
      {'title': 'Fantasy', 'icon': Icons.book},
      {'title': 'Mystery', 'icon': Icons.search},
      {'title': 'Romance', 'icon': Icons.favorite},
      {'title': 'Horror', 'icon': Icons.remove_red_eye},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Genres'),
        backgroundColor: Color.fromARGB(255, 232, 188, 121),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: genres.length,
        itemBuilder: (context, index) {
          final genre = genres[index];
          return GenreCard(
            title: genre['title'] as String,
            icon: genre['icon'] as IconData,
            onTap: () {
              Get.snackbar('Genre Selected', 'You selected ${genre['title']}');
            },
          );
        },
      ),
    );
  }
}
