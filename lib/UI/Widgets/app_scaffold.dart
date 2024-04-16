import 'package:flutter/material.dart';


class AppScaffold extends StatelessWidget {
  final String title;
  final Widget? bottomNavigationBar;
  final Widget body;
  AppScaffold({super.key , required this.title , required this.body , this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
