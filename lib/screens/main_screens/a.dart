import 'package:flutter/material.dart';
import 'package:expandable_search_bar/expandable_search_bar.dart';

class a extends StatefulWidget {
  const a({super.key});

  @override
  State<a> createState() => _aState();
}

class _aState extends State<a> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: ExpandableSearchBar(
          textFieldAnimationCurve: Cubic(10, 20, 10, 20),
          animationDuration: Duration(milliseconds: 2000),
          onTap: () {},
          editTextController: new TextEditingController(),
          hintText: 'search',
        ),
      ),
    ));
  }
}
