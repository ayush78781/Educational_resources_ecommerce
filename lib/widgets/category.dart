import 'package:flutter/material.dart';
import './category_cart.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
              Icon(
                Icons.book,
                size: 40,
              ),
              'Books'),
          CategoryCard(
              Icon(
                Icons.computer,
                size: 40,
              ),
              'Laptops'),
          CategoryCard(
              Icon(
                Icons.picture_as_pdf,
                size: 40,
              ),
              'E-books'),
          CategoryCard(
              Icon(
                Icons.notes_rounded,
                size: 40,
              ),
              'Notes'),
          CategoryCard(
              Icon(
                Icons.article_sharp,
                size: 40,
              ),
              'T-Blogs'),
          CategoryCard(
              Icon(
                Icons.devices_other_sharp,
                size: 40,
              ),
              'Others'),
        ],
      ),
    );
  }
}
