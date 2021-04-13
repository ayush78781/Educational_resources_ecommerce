import 'package:books_ecommerce/screens/homepage.dart';
import 'package:flutter/material.dart';
import '../screens/cart_screen.dart';
import 'package:books_ecommerce/screens/profile_screen.dart';
import 'package:url_launcher/url_launcher.dart';

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print('could not laumch $command');
  }
}

class Sidenav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/en/1/1c/Trump_the_art_of_the_deal.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    'Rohan Singh',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'rohan@gmail.com',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(Profile.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline_outlined),
            title: Text(
              'Wishlist',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(CartScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(
              'Help/Support',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.report_outlined),
            title: Text(
              'Report',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              customLaunch(
                  'mailto:ayush70781@gmail.com?subject=test%20subject&body=test%20body');
            },
          ),
        ],
      ),
    );
  }
}
