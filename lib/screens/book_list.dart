import 'package:flutter/material.dart';
import '../widgets/book.dart';

/// Booklist widget
/// Uses the [Book] widget to display a list of books.
class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ceylon Bookstore'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            Book(
              coverImagePath: 'assets/images/rich-dad-poor-dad.jpg',
              title: 'Rich Dad, Poor Dad',
              author: 'Robert T. Kiyosaki',
              price: 1250,
            ),
            Book(
              coverImagePath: 'assets/images/the-alchemist.jpg',
              title: 'The Alchemist',
              author: 'Paulo Coelho',
              price: 1000,
            ),
            Book(
              coverImagePath: 'assets/images/men-are-from-mars.jpg',
              title: 'Men Are From Mars',
              author: 'John Gray',
              price: 1500,
            ),
            Book(
              coverImagePath: 'assets/images/who-killed-change.jpg',
              title: 'Who Killed Change?',
              author: 'Ken Blanchard',
              price: 900,
            ),
            Book(
              coverImagePath: 'assets/images/the-doomsday-conspiracy.jpg',
              title: 'The Doomsday Conspiracy',
              author: 'Sidney Sheldon',
              price: 1100,
            ),
          ],
        ),
      ),
    );
  }
}
