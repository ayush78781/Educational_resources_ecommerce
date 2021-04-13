import 'package:books_ecommerce/widgets/home_body.dart';
import 'package:flutter/material.dart';
import '../screens/cart_screen.dart';
import '../widgets/sidenav.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      drawer: Sidenav(),
      appBar: AppBar(
        title: Text('Edu-resources E-com'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.favorite_outline_outlined, size: 30),
              onPressed: () =>
                  Navigator.of(context).pushNamed(CartScreen.routeName))
        ],
      ),
      body: HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text('Home'),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.upload_outlined,
                size: 30,
              ),
              title: Text('Upload'),
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share_outlined),
              title: Text('Drop'),
              backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.indigo,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }

  void setState(Null Function() param0) {}
}
