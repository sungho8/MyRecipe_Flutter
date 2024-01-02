import 'package:flutter/material.dart';
import 'package:my_recipe/component/app_title_bar.dart';
import 'package:my_recipe/constants/colors.dart';
import 'package:my_recipe/constants/dimens.dart';

class CreateScene extends StatelessWidget {
  const CreateScene({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      appBar: AppTitleBar(
        '레시피 생성',
        shownActionButton: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            
            ),
          ),
        ),
      ),
    )
  }
}
