import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    this.width,
    this.height,
    this.onTap,
    this.bgColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    this.boxShadow,
   
    required this.child,
    super.key,
  });

  final Function()? onTap;
  final Widget child;
  final Color? bgColor;
  final Color? borderColor;
  final double? borderRadius;
  final double? width;
  final double? height;
  final double? borderWidth;
  final EdgeInsetsGeometry? padding;
  final BoxShadow? boxShadow;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         
          color: bgColor,
          boxShadow: boxShadow == null ? [] : [boxShadow!],
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          border: Border.all(
              width: borderWidth ?? 0,
              color: borderColor ?? Colors.transparent)),
      width: width,
      height: height,
      child: CupertinoButton(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          padding: padding,
          onPressed: onTap,
          child: child),
    );
  }
}
