import 'package:flutter/material.dart';
import 'package:minimal/components/components.dart';

// TODO Replace with object model.
const String listItemTitleText = "A BETTER BLOG FOR WRITING";
const String listItemPreviewText =
    "Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt. Placerat vestibulum lectus mauris ultrices eros. Et leo duis ut diam. Auctor neque vitae tempus […]";

class PageHomeDesktop extends StatelessWidget {
  static const String name = 'list';

  const PageHomeDesktop({Key? key}) : super(key: key);

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
                      title: '니가가세요. 캠핑',
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
