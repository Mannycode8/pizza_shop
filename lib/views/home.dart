// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pizza_shop/model/category_card.dart';
import 'package:pizza_shop/model/category_card1.dart';

import '../routes/app_widgets/asset_image.dart';

//first comment only vor version contol puposes. can delete later

List<String> categoryButtons = [
  "All Items",
  "Pizza",
  "Salads",
  "Pastries",
  "Seafood",
  "Sushi"
];

List<CategoryCard> categoryList= [
  CategoryCard(productImage: "assets/images/pizza.jpg",
   productName: 'Pizza1', productCategory: "Pizza", price: 100),
  CategoryCard(productImage: "assets/images/Jalapeno pizza.png",
   productName: 'Pizza2', productCategory: "Pizza", price: 200),
  CategoryCard(productImage: "assets/images/pizza.jpg",
   productName: 'Pizza3', productCategory: "Pizza", price: 300),
  CategoryCard(productImage: "assets/images/pizza.jpg",
   productName: 'Pizza4', productCategory: "Pizza", price: 400),
  CategoryCard(productImage: "assets/images/pizza.jpg",
   productName: 'Pizza5', productCategory: "Pizza", price: 500),
  CategoryCard(productImage: "assets/images/pizza.jpg",
   productName: 'Pizza6', productCategory: "Pizza", price: 600),
];
List<CategoryCard1> categoryList1=[
  CategoryCard1(productImage: "assets/images/fruit salad.jpg", 
  productName: 'Fruit Salad',
   productCategory: 'Salad',
    price: 900),
     CategoryCard1(productImage: "assets/images/fruit salad.jpg", 
  productName: 'Fruit Salad',
   productCategory: 'Salad',
    price: 900),
];
int initialIndex = 0;
class Home extends StatelessWidget {
   Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("140, Broadway Avenue",style: TextStyle(
          fontSize: 15
        ),),
        actions: [
          const Icon(Icons.search),
          EcAssetsImage(imgAssets: 'assets/images/pizza.jpg',height: 39,width: 40,maxHeight: 23,)
        ],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: const Icon(Icons.shopping_bag,color: Colors.black,),
      backgroundColor: Colors.amber.shade200,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.vertical,
        child: Container(
          child:  Column(
            children: [
              ListTile(
                title: Text("What Would You Like",style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),),
                subtitle: Text("to eat?",style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 30,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 10,),
                  itemBuilder: (
                 context, index)=>ElevatedButton(onPressed: (){},
                 child: Text(categoryButtons[index], style: TextStyle(
                  color: Colors.black
                 ),),
                 style: ElevatedButton.styleFrom(
                    backgroundColor: 
                          initialIndex == index ? Colors.amber
                          : Colors.white
                 ),),
                 itemCount: 6,
                 scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Favorite Dishes",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),)),
                Container(
                  height: 270,
                  child: ListView.builder(itemBuilder: buildCard,
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  ),
                ),SizedBox(height: 30,),
                Align(
                alignment: Alignment.centerLeft,
                child: Text("Business lunch",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),)),
                Container(
                  child: SizedBox(height: 270,
                    child: ListView.builder(itemBuilder: buildCard1,
                    itemCount: categoryList1.length,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: false,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCard(BuildContext context, int index){
  var cards = categoryList[index];
  return CategoryCard(productImage: cards.productImage,
   productName: cards.productName, 
   productCategory: cards.productCategory, 
   price: cards.price);
}
Widget buildCard1(BuildContext context, int index){
  var cards = categoryList1[index];
  return CategoryCard(productImage: cards.productImage,
   productName: cards.productName, 
   productCategory: cards.productCategory, 
   price: cards.price);
}
