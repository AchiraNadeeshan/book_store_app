import 'package:flutter/material.dart';

/// A widget to display the detailed view of a book.
class BookDetailsWidget extends StatelessWidget {
  final String title;
  final String author;
  final String coverImagePath;
  final String description;
  final double price;

  const BookDetailsWidget({
    super.key,
    required this.title,
    required this.author,
    required this.coverImagePath,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'by $author',
              style: const TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Image.asset(
              coverImagePath,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Price: LKR $price',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add to cart functionality
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900], // Dark blue
                ),
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(color: Colors.white), // White text color
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
