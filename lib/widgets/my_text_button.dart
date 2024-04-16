import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    this.onTap,
    this.bgColor,
    this.fgColor,
    this.strokeColor,
    this.borderRadius,
    this.size,
    this.elevation,
    this.boxShadow,
    this.padding,
    this.margin,
    this.sizeBorder,
    this.boxBorder,
    required this.child,
    super.key,
  });

  final Function()? onTap;
  final Widget child;
  final Color? bgColor;
  final Color? fgColor;
  final Color? strokeColor;
  final BoxBorder? boxBorder;
  final double? borderRadius;
  final double? sizeBorder;
  final double? elevation;
  final Size? size;
  final BoxShadow? boxShadow;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
          border: boxBorder,
          boxShadow: boxShadow == null ? [] : [boxShadow!],
          borderRadius: BorderRadius.circular(borderRadius ?? 10)),
      child: TextButton(
          style: TextButton.styleFrom(
            elevation: elevation,
            foregroundColor: fgColor ?? cW.withOpacity(.5),
            minimumSize: size ?? Size(Get.width * .8, 45),
            fixedSize: size ?? Size(Get.width * .8, 45),
            padding: padding,
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: strokeColor ?? Colors.transparent,width: sizeBorder ??0 ),
              borderRadius: BorderRadius.circular(borderRadius ?? 10),
            ),
          ),
          onPressed: onTap,
          child: child),
    );
  }
}
