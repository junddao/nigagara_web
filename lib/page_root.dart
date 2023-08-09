import 'package:flutter/material.dart';

import 'lib.dart';

class PageRoot extends StatefulWidget {
  const PageRoot({super.key});

  @override
  State<PageRoot> createState() => _PageRootState();
}

class _PageRootState extends State<PageRoot> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            MinimalMenuBar(),
            Expanded(child: PageHome()),
            Footer(),
          ],
        ),
      ),
    ));
  }
}
