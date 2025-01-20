import 'package:flutter/material.dart';
import '../widgets/book.dart';
import 'book_details_page.dart';

/// Booklist widget
/// Uses the [Book] widget to display a list of books.
class BookList extends StatelessWidget {
  const BookList({super.key});

  void navigateToBookDetails(
    BuildContext context,
    String title,
    String author,
    String coverImagePath,
    double price,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailsPage(
          title: title,
          author: author,
          coverImagePath: coverImagePath,
          price: price,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ceylon Bookstore'),
        backgroundColor: Colors.blue[900], // Dark blue
      ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () => navigateToBookDetails(
                context,
                'Rich Dad, Poor Dad',
                'Robert T. Kiyosaki',
                'assets/images/rich-dad-poor-dad.jpg',
                1250,
              ),
              child: const Book(
                coverImagePath: 'assets/images/rich-dad-poor-dad.jpg',
                title: 'Rich Dad, Poor Dad',
                author: 'Robert T. Kiyosaki',
                price: 1250,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToBookDetails(
                context,
                'The Alchemist',
                'Paulo Coelho',
                'assets/images/the-alchemist.jpg',
                1000,
              ),
              child: const Book(
                coverImagePath: 'assets/images/the-alchemist.jpg',
                title: 'The Alchemist',
                author: 'Paulo Coelho',
                price: 1000,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToBookDetails(
                context,
                'Men Are From Mars',
                'John Gray',
                'assets/images/men-are-from-mars.jpg',
                1500,
              ),
              child: const Book(
                coverImagePath: 'assets/images/men-are-from-mars.jpg',
                title: 'Men Are From Mars',
                author: 'John Gray',
                price: 1500,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToBookDetails(
                context,
                'Who Killed Change?',
                'Ken Blanchard',
                'assets/images/who-killed-change.jpg',
                900,
              ),
              child: const Book(
                coverImagePath: 'assets/images/who-killed-change.jpg',
                title: 'Who Killed Change?',
                author: 'Ken Blanchard',
                price: 900,
              ),
            ),
            GestureDetector(
              onTap: () => navigateToBookDetails(
                context,
                'The Doomsday Conspiracy',
                'Sidney Sheldon',
                'assets/images/the-doomsday-conspiracy.jpg',
                1100,
              ),
              child: const Book(
                coverImagePath: 'assets/images/the-doomsday-conspiracy.jpg',
                title: 'The Doomsday Conspiracy',
                author: 'Sidney Sheldon',
                price: 1100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
