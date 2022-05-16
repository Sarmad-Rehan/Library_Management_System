import 'dart:io';
import 'book.dart';

void main(List<String> args) {
  menu();
}

void menu() {
  List<Book> books = [];
  int? choice;
  int count = 0;
  do {
    print("[1] Add a Book");
    print("[2] Update a Book Record");
    print("[3] Delete a Book Record");
    print("[4] Issue a Book");
    print("[5] Book Details");
    print("[6] Exit");
    stdout.write("Enter Your Choice: ");
    choice = int.tryParse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        stdout.write("Enter Book Title: ");
        String title = stdin.readLineSync()!;
        stdout.write("Enter Author: ");
        String author = stdin.readLineSync()!;
        stdout.write("Enter Price: ");
        double price = double.parse(stdin.readLineSync()!);
        stdout.write("Enter Edition: ");
        int edition = int.parse(stdin.readLineSync()!);
        books.add(Book(
            book_Id: count++,
            title: title,
            author: author,
            price: price,
            edition: edition,
            bookStatus: true));
        break;

      case 2:
      case 5:
        for (int i = 0; i < books.length; i++) {
          print(books);
        }
        break;
      case 6:
        print("Thank You for using Library Management System");
        break;

      default:
        print("Invalid Choice");
        break;
    }
  } while (choice != 6);
}
