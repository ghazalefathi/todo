import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/controllers/public_controller.dart';
import 'package:todo/widgets/MyTextButton.dart';
import 'package:todo/widgets/my_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController serchController = TextEditingController();
PublicController publicController = Get.find();
bool foled = true;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: publicController.scaffoldState,
      backgroundColor: cBgBlack,
      drawer: DrawerMenuWidget(),
      floatingActionButton: MyTextButton(
          borderRadius: 30,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          onTap: () {},
          bgColor: cB,
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              MyText(
                text: 'add item',
                color: cW,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                decoration:
                    BoxDecoration(color: cBlueLight, shape: BoxShape.circle),
                height: 40,
                width: 40,
                child: Icon(
                  Icons.add,
                  color: cBlueDark,
                ),
              )
            ],
          )),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! Derawer menu
              Row(
                textDirection: TextDirection.ltr,
                children: [
                  MyTextButton(
                    padding: EdgeInsetsDirectional.zero,
                    width: 50,
                    height: 50,
                    borderRadius: 30,
                    onTap: () {
                      publicController.changeDrawerState(open: true);
                    },
                    bgColor: cBlueLight,
                    child: Icon(
                      Icons.menu_outlined,
                      color: cBlueDark,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: foled == true ? 50 : Get.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: foled == true ? cBlueLight : cB),
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
                                        hintStyle: TextStyle(
                                            color: cW.withOpacity(.5))),
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
                                  color: cBlueLight,
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
            ],
          ),
        ),
      ),
    ));
  }
}

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.red,
    );
  }
}
