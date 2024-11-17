import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ebook_app/Controller/api_controller.dart';
import 'package:my_ebook_app/Widgets/ebook_card.dart';


class HomeScreen extends StatelessWidget {
  final GoogleBooksController booksController = Get.put(GoogleBooksController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 232, 188, 121),
      ),
      backgroundColor: Color.fromARGB(255, 232, 188, 121),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          if (booksController.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          }

          if (booksController.books.isEmpty) {
            return Center(child: Text('No books found'));
          }

          return ListView.builder(
            itemCount: booksController.books.length,
            itemBuilder: (context, index) {
              var book = booksController.books[index]['volumeInfo'];
              return EbookCard(
                title: book['title'] ?? 'Unknown Title',
                author: (book['authors'] != null && book['authors'].isNotEmpty)
                    ? book['authors'][0]
                    : 'Unknown Author',
                description: book['description'] ?? 'No Description',
                imageUrl: book['imageLinks'] != null
                    ? book['imageLinks']['thumbnail'] ?? 'https://via.placeholder.com/150'
                    : 'https://via.placeholder.com/150', // Fallback image
              );
            },
          );
        }),
      ),
    );
  }
}
