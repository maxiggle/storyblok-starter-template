import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/view/intro/introWeb.dart';
import 'package:scroll_to_index/scroll_to_index.dart';


class IntroContent extends StatefulWidget {
 final AutoScrollController aScrollController;

  IntroContent(this.aScrollController, {Key? key}) : super(key: key);

  @override
  State<IntroContent> createState() => _IntroContentState();
}

class _IntroContentState extends State<IntroContent> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      webView: IntroWeb(widget.aScrollController),
    );
  }
}
