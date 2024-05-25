import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/strings.dart';
import 'package:todo/widgets/MyTextButton.dart';
import 'package:todo/widgets/my_text_widget.dart';

class oneScreen extends StatefulWidget {
  const oneScreen({super.key});

  @override
  State<oneScreen> createState() => _oneScreenState();
}

class _oneScreenState extends State<oneScreen> {
  bool isExpanded = false;
  bool isBigImage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: isExpanded ? 150 : 60,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration:
              BoxDecoration(border: Border.all(color: cB.withOpacity(.2))),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          shape: BoxShape.circle),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/user.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    MyText(
                      text: 'Ghazale Fathi',
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    MyTextButton(
                        padding: EdgeInsets.zero,
                        onTap: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Icon(
                          isExpanded
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down,
                          size: 35,
                          color: cB,
                        ))
                  ],
                ),
                isExpanded
                    ? MyText(textAlign: TextAlign.left, text: '$lorem')
                    : SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}












// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todo/constants/colors.dart';
// import 'package:todo/controllers/public_controller.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// TextEditingController serchController = TextEditingController();
// PublicController publicController = Get.find();
// bool foled = true;

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       key: publicController.scaffoldState,
//       backgroundColor: cBgBlack,
//       body: Column(
//         children: [
//           Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   AnimatedContainer(
//                     duration: Duration(milliseconds: 300),
//                     width: foled == true ? 50 : 250,
//                     height: 50,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: foled == true ? cBlueLight : cB),
//                     child: Row(
//                       children: [
//                         Expanded(
//                             child: Container(
//                                 padding: EdgeInsets.only(left: 10),
//                                 child: !foled
//                                     ? TextField(
//                                         showCursor: false,
//                                         style: TextStyle(color: cW),
//                                         decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             hintText: 'search..',
//                                             hintStyle: TextStyle(
//                                                 color: cW.withOpacity(.5))),
//                                       )
//                                     : null)),
//                         AnimatedContainer(
//                           duration: Duration(milliseconds: 300),
//                           child: Material(
//                             type: MaterialType.transparency,
//                             child: IconButton(
//                               splashRadius: 1,
//                               icon: foled == false
//                                   ? Icon(
//                                       Icons.close,
//                                       color: cBlueLight,
//                                     )
//                                   : Icon(
//                                       Icons.search,
//                                       color: cBlueDark,
//                                     ),
//                               onPressed: () {
//                                 setState(() {
//                                   foled = !foled;
//                                 });
//                               },
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             width: Get.width,
//             child: Row(
//               children: [
//                 Container(
//                   width: 30,
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }

// // class DrawerMenuWidget extends StatelessWidget {
// //   const DrawerMenuWidget({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: 200,
// //       color: Colors.red,
// //     );
// //   }
// // }
