import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.hint,
    this.controller,
    this.borderRadius,
    this.inputType,
    this.maxLength,
    this.textAlign,
    this.action,
    this.onchangedAction,
    this.focusNode,
    this.maxLines = 1,
    this.textDirection,
    this.isPassword,
    this.isEnabled,
    this.hintColor,
    this.hintFontSize,
    this.width,
    this.height,
    this.prefixIcon,
    this.hasBorder = false,
    this.textStyle,
    this.suffixIcon,
    this.cursorColor,
    this.onActionClicked,
    this.fillColor,
    this.textColor,
    this.strokeColor,
    this.fontSize,
    this.paddingTop,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingRight,
    super.key,
  });
  final String hint;
  final double? borderRadius;
  final double? hintFontSize;
  final double? width;
  final double? height;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingLeft;
  final double? paddingRight;
  final double? fontSize;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final int? maxLength;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextInputAction? action;
  final Function(String text)? onchangedAction;
  final Function(String text)? onActionClicked;
  final FocusNode? focusNode;
  final int? maxLines;
  final TextDirection? textDirection;
  final bool? isPassword;
  final bool? isEnabled;
  final bool? hasBorder;
  final Color? hintColor;
  final Color? cursorColor;
  final Color? strokeColor;
  final Color? fillColor;
  final Color? textColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        style: textStyle,
        enabled: isEnabled,
        obscureText: isPassword == true ? true : false,
        focusNode: focusNode,
        textInputAction: action,
        maxLines: maxLines,
        keyboardType: inputType,
        onSubmitted: onActionClicked,
        controller: controller,
        onChanged: onchangedAction,
        cursorColor: cursorColor,
        textAlign: textAlign ?? TextAlign.left,
        inputFormatters: addlist(maxLength, inputType),
        decoration: InputDecoration(
          fillColor: fillColor,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          isCollapsed: true,
          contentPadding: EdgeInsets.only(
            left: paddingLeft ?? 20,
            right: paddingRight ?? 20,
            top: paddingTop ?? 20,
            bottom: paddingBottom ?? 20,
          ),
          hintText: hint,
          hintStyle: TextStyle(
            height: 1,
            color: hintColor,
            fontSize: hintFontSize ?? 15,
          ),
          enabledBorder: hasBorder == false
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    borderRadius ?? 10,
                  ),
                  borderSide: BorderSide(color: Colors.transparent, width: 0))
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    borderRadius ?? 10,
                  ),
                  borderSide: strokeColor == null
                      ? BorderSide.none
                      : BorderSide(color: strokeColor!, width: 1)),
          focusedBorder: hasBorder == false
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    borderRadius ?? 10,
                  ),
                  borderSide: BorderSide(color: Colors.transparent, width: 0))
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 5),
                  borderSide: strokeColor == null
                      ? BorderSide.none
                      : BorderSide(color: strokeColor!, width: 1)),
          disabledBorder: hasBorder == false
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    borderRadius ?? 10,
                  ),
                  borderSide: BorderSide(color: Colors.transparent, width: 0))
              : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    borderRadius ?? 10,
                  ),
                  borderSide: strokeColor == null
                      ? BorderSide.none
                      : BorderSide(color: strokeColor!, width: 1)),
        ),
      ),
    );
  }
}

List<TextInputFormatter> addlist(int? length, TextInputType? txtinput) {
  List<TextInputFormatter> a = [];
  if (length != null) {
    a.add(LengthLimitingTextInputFormatter(length));
  }
  if (txtinput == TextInputType.number) {
    a.add(FilteringTextInputFormatter.digitsOnly);
  }

  return a;
}
