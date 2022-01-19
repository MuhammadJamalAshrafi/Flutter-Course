import "dart:io";

void main() {
  String ask = "Enter Your Favourite Book Category to Find : ";
  print(ask);
  bool isRunning = true;
  while (isRunning) {
    String search_book_category = stdin.readLineSync()!;
    if (search_book_category == "") {
      print(ask);
    } else {
      checkFavourite(search_book_category);
      isRunning = false;
    }
  }
}

checkFavourite(search) {
  List<String> book_categories = [
    "Comics",
    "History",
    "Action",
    "Horror",
    "Islamic"
  ];
  int count = 0;
  for (String item in book_categories) {
    if (search != item) {
      if (count == book_categories.length - 1) {
        print("$search Book Category not found in the list!!");
      }
      count++;
    } else {
      print("$search Book Category found in the list!!");
    }
  }
}
