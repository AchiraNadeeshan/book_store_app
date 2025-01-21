import 'package:flutter/material.dart';
import '../widgets/book_home.dart';
import 'book_details_page.dart';
import 'cart_page.dart';

/// Booklist widget
/// Uses the [Book] widget to display a list of books.
class BookList extends StatelessWidget {
  const BookList({super.key});

  /// Navigate to the book details page
  void navigateToBookDetails(
    BuildContext context,
    String title,
    String author,
    String coverImagePath,
    String description,
    double price,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailsPage(
          title: title,
          author: author,
          coverImagePath: coverImagePath,
          description: description,
          price: price,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ceylon Bookstore',
          style: TextStyle(
            color: Colors.white, // Set text color to white
          ),
        ),
        backgroundColor: Colors.blue[900], // Dark blue
        iconTheme: const IconThemeData(
          color: Colors.white, // Ensure icons are white
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
          ),
        ],
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
                'This book teaches financial literacy, advocating for the importance of assets, investments, and financial independence.',
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
                'A philosophical tale about following your dreams and finding your personal legend.',
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
                'A practical guide to understanding and improving communication in relationships.',
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
                'A fascinating business fable uncovering why change efforts often fail in organizations.',
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
                'A thrilling novel about secrets, conspiracies, and a race against time.',
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
