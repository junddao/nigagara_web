import 'package:flutter/material.dart';
import 'package:minimal/size_config.dart';
import 'package:minimal/utils/extension/build_context_extension.dart';

import '../lib.dart';

const Widget divider = Divider(color: Color(0xFFEEEEEE), thickness: 1);
Widget dividerSmall = Container(
  width: 40,
  decoration: const BoxDecoration(
    border: Border(
      bottom: BorderSide(
        color: Color(0xFFA0A0A0),
        width: 1,
      ),
    ),
  ),
);

class ListItem extends StatelessWidget {
  // TODO replace with Post item model.
  final String title;
  final String? imageUrl;
  final String? description;

  const ListItem({Key? key, required this.title, this.imageUrl, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Responsive(
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (imageUrl != null)
                Image.asset(
                  imageUrl!,
                  fit: BoxFit.cover,
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenWidth * 3 / 4,
                ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: marginBottom12,
                  child: Text(
                    title,
                    style: headlineTextStyle,
                  ),
                ),
              ),
            ],
          ),
          tablet: Row(
            children: [
              if (imageUrl != null)
                Image.asset(imageUrl!,
                    fit: BoxFit.cover,
                    width: context.mediaQuery.size.width * 0.5,
                    height: context.mediaQuery.size.width * 0.5 * 3 / 4),
              const SizedBox(width: 20),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: headlineTextStyle,
                  ),
                ),
              ),
            ],
          ),
          desktop: Row(
            children: [
              if (imageUrl != null)
                Image.asset(imageUrl!,
                    fit: BoxFit.cover,
                    width: context.mediaQuery.size.width * 0.5,
                    height: context.mediaQuery.size.width * 0.5 * 3 / 4),
              const SizedBox(height: 16),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: headlineTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        // if (description != null)
        //   Align(
        //     alignment: Alignment.centerLeft,
        //     child: Container(
        //       margin: marginBottom12,
        //       child: Text(
        //         description!,
        //         style: bodyTextStyle,
        //       ),
        //     ),
        //   ),
      ],
    );
  }
}
