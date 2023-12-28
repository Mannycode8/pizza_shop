

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
   CategoryCard({super.key, required this.productImage, required this.productName, required this.productCategory, required this.price});
  final String productImage;
  final String productName;
  final String productCategory;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 250,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(productImage,
            height: 150,fit: BoxFit.fitWidth ,),
          ),
          Text(productName,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
          Text(productCategory,style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12
          ),),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.centerRight,
            child: Text("\$$price",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          )
        ]),
      ),
      
    );
  }
}