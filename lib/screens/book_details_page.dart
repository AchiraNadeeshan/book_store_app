import 'package:flutter/material.dart';
import '../widgets/book_details_widget.dart';

/// Displays the details of a book in a detailed view.
class BookDetailsPage extends StatelessWidget {
  final String title;
  final String author;
  final String coverImagePath;
  final String description;
  final double price;

  const BookDetailsPage({
    super.key,
    required this.title,
    required this.author,
    required this.coverImagePath,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
        backgroundColor: Colors.blue[900], // Dark blue
      ),
      body: SafeArea(
        child: BookDetailsWidget(
          title: title,
          author: author,
          coverImagePath: coverImagePath,
          description: description,
          price: price,
        ),
      ),
    );
  }
}
