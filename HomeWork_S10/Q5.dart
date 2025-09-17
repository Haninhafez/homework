void main() {
  Book book = Book();
  book.title = "Harry poter";
  book.Pages = 195;
  print("${book.title} : ${book.Pages} in ${book.timeiInbook} ");
}

class Book {
  String? _title;
  int? _pages;
  set title(String? v) {
    if (v == null || v.isEmpty) {
      print("Rejected");
    } else {
      _title = v;
    }
  }

  String? get title => _title;

  set Pages(int? v) {
    if (v == null || v <= 0) {
      print("Rejected");
    } else {
      _pages = v;
    }
  }

  int? get Pages => _pages;
  int? get timeiInbook => _pages! * 2;
}
