import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Body());
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: "assets\icons\005-user.svg",
          text: "My Accounts",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets\icons\001-upload.svg",
          text: "Your Uploads",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets\icons\001-writing.svg",
          text: "Your Blogs",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets\icons\002-contact-book.svg",
          text: "Contact Info",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets\icons\001-home.svg",
          text: "Address",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets\icons\003-logout.svg",
          text: "Log Out",
          press: () {},
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.text,
    @required this.icon,
    @required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.blue,
          onPressed: press,
          child: Row(
            children: [
              SvgPicture.asset(
                icon,
                width: 22,
                color: Colors.blue,
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          )),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/en/1/1c/Trump_the_art_of_the_deal.jpg"),
            ),
            Positioned(
              right: -12,
              bottom: 0,
              child: SizedBox(
                  height: 46,
                  width: 46,
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: BorderSide(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {},
                    child: null,
                  )),
            )
          ],
        ));
  }
}
