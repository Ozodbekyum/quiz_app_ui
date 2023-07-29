// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class QuesController extends GetxController
//     with SingleTickerProviderStateMixin {

//   AnimationController animationControll;
//   Animation animations;
//   Animation get animation => this.animations;

//   @override
//   void onInit() {
//     animationControll = AnimationController(
//         duration: Duration(
//           seconds: 60,
//         ),
//         vsync: this);
//     animations = Tween(begin: 0, end: 1).animate(animationControll)
//       ..addListener(() {
//         update();
//       });
//     super.onInit();
//   }
// }
