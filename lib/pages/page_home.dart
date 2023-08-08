import 'package:flutter/material.dart';
import 'package:minimal/responsive.dart';

import '../lib.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PageHomeMobile(),
      tablet: PageHomeTablet(),
      desktop: PageHomeDesktop(),
    );
  }
}
