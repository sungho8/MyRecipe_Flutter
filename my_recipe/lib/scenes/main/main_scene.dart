import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_recipe/scenes/main/main_controller.dart';
import 'package:my_recipe/scenes/main/recipe_list_item.dart';

class MainScene extends GetView<MainController> {
  const MainScene({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: controller.recipeList.length,
            itemBuilder: ((context, index) {
              return RecipeListItem(recipe: controller.recipeList[index]);
            })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hello!');
        },
        backgroundColor: Colors.orange,
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
