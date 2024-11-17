import 'package:get/get.dart';
import 'package:my_ebook_app/API/ApiService.dart';


class GoogleBooksController extends GetxController {
  var isLoading = true.obs;
  var books = <dynamic>[].obs;
  final GoogleBooksService _googleBooksService = GoogleBooksService();

  @override
  void onInit() {
    super.onInit();
    fetchBooks();
  }

  void fetchBooks() async {
    try {
      isLoading(true);
      var fetchedBooks = await _googleBooksService.fetchBooks();
      if (fetchedBooks.isNotEmpty) {
        books.value = fetchedBooks;
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch books: $e');
    } finally {
      isLoading(false);
    }
  }
}
