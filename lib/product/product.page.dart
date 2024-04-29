import 'package:flutter/material.dart';

import 'product.card.dart';
import 'product.dart';

class ProductPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 1',
      description: '7pcs, Price',
      price: '25.99',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 2',
      description: '1kg, Price',
      price: '15.99',
    ),
    Product(
      image: 'https://via.placeholder.com/150',
      title: 'Product 3',
      description: '250gm, Price',
      price: '30.00',
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
                'Exclusive Offer',
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
                  elevation: 0
                ),
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
          height: 300,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: products.map((product) {
                return ProductCard(product: product);
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
