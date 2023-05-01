import 'package:flutter/cupertino.dart';
import 'package:portfolio/resource/app_class.dart';

class Responsive extends StatefulWidget {
  final  webView, tabView;

  Responsive({Key? key,  this.tabView, this.webView})
      : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    ScreenType scrType = AppClass().getScreenType(context);
    switch (scrType) {
      case ScreenType.tab:
        return widget.tabView;
      case ScreenType.web:
        return widget.webView;
    }
  }
}
