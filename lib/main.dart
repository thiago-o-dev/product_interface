import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "Robo-Mart",
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: Scaffold(body: SingleChildScrollView(child: ProductView())),
    );
  }
}

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
      child: Column(
        children: [
          ProductPhoto(imagePath: "assets/eilik_blue.png"),
          SizedBox(height: 32),
          ProductSellRow(name: "Eilik", price: 200.0),
          SizedBox(height: 32),
          ProductSocialsRow(),
          SizedBox(height: 32),
          ProductDescription(
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          ),
        ],
      ),
    );
  }
}

class ProductPhoto extends StatelessWidget {
  final String imagePath;

  const ProductPhoto({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath);
  }
}

class ProductSellRow extends StatelessWidget {
  final String name;
  final double price;

  const ProductSellRow({super.key, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(name),
        Row(
          children: [
            Text(price.toString()),
            SizedBox(height: 60, width: 20),
            Icon(Icons.add_shopping_cart_rounded), // add on click to be removed
          ],
        ),
      ],
    );
  }
}

class ProductSocialsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.share),
        SizedBox(width: 32),
        Icon(Icons.chat_bubble),
        SizedBox(width: 32),
        Icon(Icons.favorite),
      ],
    );
  }
}

class ProductDescription extends StatelessWidget {
  final String description;

  const ProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Text(description);
  }
}
