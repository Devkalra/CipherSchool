//Click Trending button and reach to this screen
import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.color,
    required this.id,
  });
}
List<Product> products = [
  Product(
    id: 1,
    title: "FREE IELTS/TOFEL",
    image: "assets/images/graphics.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 2,
    title: "JavaScript(JS)",
    image: "assets/images/programming.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 3,
    title: "All about Git",
    image: "assets/images/finance.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 4,
    title: "Linear regression",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 5,
    title: "App Developement",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 6,
    title: "Web Developement",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 7,
    title: "FREE Carrer Resorce",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 8,
    title: "All about DS",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 9,
    title: "Flutter Course",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),
  Product(
    id: 10,
    title: "MySQL:Beginner Series",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 111, 45, 253),
  ),

];
