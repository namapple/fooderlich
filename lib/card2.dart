import 'package:flutter/material.dart';
import 'app_ui.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 500,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppUI.imgMag5),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoissuer',
              imageProvider: AssetImage(AppUI.imgAuthor),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                    bottom: 16,
                    right: 16,
                  ),
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothie',
                        style: FooderlichTheme.lightTextTheme.headline1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
