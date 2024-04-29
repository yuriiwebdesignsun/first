import 'package:flutter/material.dart';

import 'categories.card.dart';
import 'categories.dart';

class CategoriesPage extends StatelessWidget {
  final List<Categories> categories = [
    Categories(
      image: 'https://via.placeholder.com/150',
      title: 'Product 1',
      color:Color(0xFFF8A44C),
    ),
    Categories(
      image: 'https://via.placeholder.com/150',
      title: 'Product 2',
      color: Color(0xFF53B175),

    ),
    Categories(
      image: 'https://via.placeholder.com/150',
      title: 'Product 3',
      color: Color(0xFFF8A44C),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(0, 0),
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0),
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 105,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map((category) {
                return CategoryCard(category: category);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
