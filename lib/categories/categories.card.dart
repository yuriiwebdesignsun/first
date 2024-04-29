import 'package:flutter/material.dart';

import 'categories.dart';

Color hexToColor(String hex) {
  final buffer = StringBuffer();
  if (hex.length == 6 || hex.length == 7) {
    buffer.write('ff'); // Додати значення непрозорості (alpha)
  }
  buffer.write(hex.replaceFirst('#', '')); // Видалити '#'
  return Color(int.parse(buffer.toString(), radix: 16));
}

class CategoryCard extends StatelessWidget {
  final Categories category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 250,
      height: 105,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      decoration: BoxDecoration(
        color: category.color,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.network(
            category.image,
            fit: BoxFit.cover,
            height: 72,
            width: 72,
          ),
          SizedBox(width: 15),
          Text(
            category.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.1,
              color: Color(0xFF181725),
            ),
          ),
        ],
      ),
    );
  }
}
