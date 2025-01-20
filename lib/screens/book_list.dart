import 'package:flutter/material.dart';
import 'book_details.dart';

/// Booklist widget
/// Displays a list of books and navigates to their details page on tap.
class BookList extends StatelessWidget {
  const BookList({super.key});

  /// Navigates to the book details page.
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
        builder: (context) => BookDetails(
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
        title: const Text(
          'Ceylon Bookstore',
          style: TextStyle(color: Colors.white), // White text color
        ),
        backgroundColor: Colors.blue[900], // Dark blue background color
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
              child: const ListTile(
                leading: Image(
                  image: AssetImage('assets/images/rich-dad-poor-dad.jpg'),
                  height: 50,
                ),
                title: Text('Rich Dad, Poor Dad'),
                subtitle: Text('Robert T. Kiyosaki'),
                trailing: Text('LKR 1250'),
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
              child: const ListTile(
                leading: Image(
                  image: AssetImage('assets/images/the-alchemist.jpg'),
                  height: 50,
                ),
                title: Text('The Alchemist'),
                subtitle: Text('Paulo Coelho'),
                trailing: Text('LKR 1000'),
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
              child: const ListTile(
                leading: Image(
                  image: AssetImage('assets/images/men-are-from-mars.jpg'),
                  height: 50,
                ),
                title: Text('Men Are From Mars'),
                subtitle: Text('John Gray'),
                trailing: Text('LKR 1500'),
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
              child: const ListTile(
                leading: Image(
                  image: AssetImage('assets/images/who-killed-change.jpg'),
                  height: 50,
                ),
                title: Text('Who Killed Change?'),
                subtitle: Text('Ken Blanchard'),
                trailing: Text('LKR 900'),
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
              child: const ListTile(
                leading: Image(
                  image:
                      AssetImage('assets/images/the-doomsday-conspiracy.jpg'),
                  height: 50,
                ),
                title: Text('The Doomsday Conspiracy'),
                subtitle: Text('Sidney Sheldon'),
                trailing: Text('LKR 1100'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
