import 'package:flutter/material.dart';
import 'package:books_ecommerce/screens/pdt_detail_screen.dart';
import 'package:provider/provider.dart';
import '../models/products.dart';
import '../models/cart.dart';

class PdtItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  PdtItem({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    final pdt = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(DetailPage.routeName, arguments: pdt.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridTile(
          child: Image.network(imageUrl),
          footer: GridTileBar(
            title: Text(name),
            trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  // ignore: deprecated_member_use
                  Scaffold.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 3),
                    content: Text('Item Added to Cart'),
                  ));
                  cart.addItem(pdt.id, pdt.name, pdt.price);
                }),
            backgroundColor: Colors.black87,
          ),
        ),
      ),
    );
  }
}
