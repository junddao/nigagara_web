import 'package:flutter/material.dart';
import 'package:minimal/components/components.dart';

class PageHomeMobile extends StatelessWidget {
  static const String name = 'list';

  const PageHomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: const Column(
                children: <Widget>[
                  ListItem(
                      imageUrl: "assets/images/camping1.png",
                      title: '내가 못갈땐.. \n니가가라 캠핑',
                      description: '내가 못가는 캠핑장. 다른 좋은 분께 양도하세요.'),
                  divider,
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
