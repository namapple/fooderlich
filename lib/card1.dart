import 'package:flutter/material.dart';
import 'app_ui.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

  final String catergory = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: <Widget>[
            Text(
              catergory,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline2,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                description,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 30,
              right: 0,
            ),
            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        //Constrain the container’s size to a fixed size
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 500,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppUI.imgMag1),
            //cover the entire box with this image
            fit: BoxFit.cover,
          ),
          //Apply a corner radius of 10 to all sides of the container
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
