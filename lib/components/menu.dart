import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../lib.dart';

class MinimalMenuBar extends StatelessWidget {
  const MinimalMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: Row(
            children: <Widget>[
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () => context.go(Routes.home),
                child: Text("니가가라. 캠핑",
                    style: GoogleFonts.montserrat(
                        color: textPrimary, fontSize: 30, letterSpacing: 3, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        ),
        Container(height: 1, margin: const EdgeInsets.only(bottom: 30), color: const Color(0xFFEEEEEE)),
      ],
    );
  }
}
