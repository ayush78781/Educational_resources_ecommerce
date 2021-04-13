import 'package:books_ecommerce/screens/pdt_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:books_ecommerce/models/products.dart';
import './screens/homepage.dart';
import 'package:provider/provider.dart';
import './models/cart.dart';
import './screens/cart_screen.dart';
import 'package:books_ecommerce/screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Edu-resources E-commerce App',
          theme:
              ThemeData(primaryColor: Colors.blue, accentColor: Colors.white),
          home: HomePage(),
          routes: {
            DetailPage.routeName: (ctx) => DetailPage(),
            CartScreen.routeName: (ctx) => CartScreen(),
            Profile.routeName: (ctx) => Profile(),
          }),
    );
  }
}
