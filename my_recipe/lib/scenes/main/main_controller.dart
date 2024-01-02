import 'package:get/get.dart';
import 'package:my_recipe/models/recipe.dart';

class MainController extends GetxController {
  RxList<Recipe> recipeList = RxList();

  @override
  void onInit() {
    print('onInit');
    updateList();
    super.onInit();
  }

  void updateList() {
    recipeList.add(
      Recipe(
        id: 1,
        userID: 'sungho',
        recipeName: '김치 찌개',
      ),
    );
    recipeList.add(
      Recipe(
        id: 2,
        userID: 'sungho2',
        recipeName: '된장 찌개',
      ),
    );
  }
}
