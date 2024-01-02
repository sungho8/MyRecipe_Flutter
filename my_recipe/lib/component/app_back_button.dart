import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset('assets/images/Ic_Topbar_Back.svg'),
      onPressed: () {
        Get.back();
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
