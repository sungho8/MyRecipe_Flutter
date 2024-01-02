import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipe/constants/colors.dart';
import 'package:my_recipe/constants/dimens.dart';
import 'package:my_recipe/route/path.dart';
import 'package:my_recipe/scenes/main/main_controller.dart';
import 'package:my_recipe/scenes/main/recipe_list_item.dart';

class MainScene extends GetView<MainController> {
  const MainScene({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());

    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '인기 레시피',
                  style: TextStyle(
                    fontFamily: Dimens.strFontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: controller.recipeList.length,
                    itemBuilder: ((context, index) {
                      return RecipeListItem(
                          recipe: controller.recipeList[index]);
                    })),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Paths.create);
        },
        backgroundColor: AppColors.kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(120.0),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
