import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.child,
    this.padding = 10,
    this.color,
    this.onTap,
    this.gradient,
    this.height,
    this.border,
  }) : super(key: key);

  final Widget child;
  final double padding;
  final Color? color;
  final void Function()? onTap;
  final LinearGradient? gradient;
  final double? height;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: gradient,
          color: color ?? Colors.white.withOpacity(0.5),
          border: border,
        ),
        padding: EdgeInsets.all(padding),
        child: child,
      ),
    );
  }
}
