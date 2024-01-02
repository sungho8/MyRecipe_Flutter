import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipe/component/app_back_button.dart';

class AppTitleBar extends AppBar {
  final bool shownBackButton;
  @override
  final bool centerTitle;
  final String label;
  final bool shownActionButton;
  final Widget? customBackButton;
  final Widget? customActionButton;

  AppTitleBar(
    this.label, {
    Key? key,
    this.shownBackButton = false,
    this.centerTitle = true,
    this.shownActionButton = true,
    this.customBackButton,
    this.customActionButton,
  }) : super(
          key: key,
          centerTitle: centerTitle,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          title: Text(
            label,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: shownBackButton == true
              ? (customBackButton != null)
                  ? customBackButton
                  : const AppBackButton()
              : null,
          actions: shownActionButton == true
              ? (customActionButton != null)
                  ? [customActionButton]
                  : [
                      // IconButton(
                      //   onPressed: () {
                      //     Get.toNamed(Paths.income);
                      //   },
                      //   icon: SvgPicture.asset(
                      //     'assets/images/gem${AuthService.to.gemToggleName}.svg',
                      //   ),
                      // ),
                    ]
              : null,
        );
}
