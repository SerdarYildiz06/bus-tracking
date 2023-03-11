import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
    this.appBar,
    this.child,
    this.floatingActionButton,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? child;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      appBar: appBar,
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/ankara.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
          ),
        ),
        child: child,
      ),
    );
  }
}
