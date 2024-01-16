import 'package:flutter/material.dart';
import 'package:flutter_api/utilities/constants/theme_colors.dart';

class BasePage extends StatefulWidget {
  final Widget child;
  final AppBar? appBar;
  final Color? backgroundColor;
  const BasePage(
      {super.key, required this.child, this.appBar, this.backgroundColor});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor ?? ThemeColors.lavanderBlue,
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: widget.appBar,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: widget.child,
      )),
    );
  }
}
