import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController serchController = TextEditingController();
bool foled = true;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: cBgBlack,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Column(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: foled == true ? 50 : 250,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: foled == true ? cH : cB),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: !foled
                                ? TextField(
                                  showCursor: false, 
                                    style: TextStyle(color: cW),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'search..',
                                        hintStyle: TextStyle(color: cW.withOpacity(.5))),
                                  )
                                : null)),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      child: Material(
                        type: MaterialType.transparency,
                        child: IconButton(
                          splashRadius: 1,
                          icon: foled == false
                              ? Icon(
                                  Icons.close,
                                  color: cH,
                                )
                              : Icon(
                                  Icons.search,
                                  color: cBlueDark,
                                ),
                          onPressed: () {
                            setState(() {
                              foled = !foled;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )
              // Container(

              // child: AnimSearchBar(

              //   animationDurationInMilli: 2500,
              //   textFieldIconColor: cH,
              //   searchIconColor: cBlueDark,
              //   textFieldColor: cB,
              //   suffixIcon: Icon(
              //     Icons.delete,
              //     color: cBlueDark,
              //   ),
              //   closeSearchOnSuffixTap: false,
              //   style: TextStyle(color: cW),
              //   width: Get.width,
              //   color: cH,
              //   textController: serchController,
              //   onSuffixTap: () {},
              //   onSubmitted: (p0) {},
              // ),
              // ),
            ],
          ),
        ),
      ),
    ));
  }
}
