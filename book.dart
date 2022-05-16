class Book {
  final int book_Id;
  String title;
  String author;
  double price;
  int edition;
  bool bookStatus;

  Book(
      {required this.book_Id,
      required this.title,
      required this.author,
      required this.edition,
      required this.price,
      required this.bookStatus});
  void updateBookStatus(bool bookStatus) {
    this.bookStatus = bookStatus;
  }

  void updateBookRecord(
      String title, String author, double price, int edition, bool bookStatus) {
    this.title = title;
    this.author = author;
    this.edition = edition;
    this.price = price;
  }

  void deleteBookRecord() {}

  void searchByTitle(String title) {}
  void searchByAuthor(String author) {}
  void showDetails() {
    print("Book Title: $title");
    print("Book Author: $author");
    print("Book Price: $price}");
    print("Book Edition: $edition");
    print("");
  }

  @override
  String toString() {
    return "\n\nId: $book_Id Title:$title Author:$author Price:$price Edition:$edition ";
  }
}
