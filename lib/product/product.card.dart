import 'package:flutter/material.dart';

import 'product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 170,
      height: 250,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.image,
            fit: BoxFit.cover,
            height: 100,
            width: double.infinity,
          ),
          Text(
            product.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.1,
              color: Color(0xFF181725),
            ),
          ),
          Text(
            product.description,
            style: TextStyle(fontSize: 14, color: Color(0xFF7C7C7C)),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 42,
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(0, 0),
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.green,
                    alignment: Alignment.center,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Дія при натисканні на кнопку
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
