import 'dart:convert';
import 'package:http/http.dart' as http;

class GoogleBooksService {
  final String baseUrl = 'https://www.googleapis.com/books/v1/volumes?q=flutter'; // Example query for "flutter"

  Future<List<dynamic>> fetchBooks() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['items'] ?? [];
    } else {
      throw Exception('Failed to fetch books');
    }
  }
}
