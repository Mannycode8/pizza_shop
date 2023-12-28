import 'package:flutter/material.dart';

class CategoryCard1 extends StatelessWidget {
  const CategoryCard1(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productCategory,
      required this.price});
  final String productImage;
  final String productName;
  final String productCategory;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 200,
        width: 230,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              productImage,
              height: 100,
              fit: BoxFit.fitWidth,
            ),
          ),
          const Text(
            'Fruit Salad',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Salad',
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "\$4.50",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
