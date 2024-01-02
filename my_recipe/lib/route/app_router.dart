import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_recipe/route/path.dart';
import 'package:my_recipe/scenes/main/main_scene.dart';

class AppRouter {
  AppRouter._();

  static const initialRoute = Paths.root;

  static final List<GetPage> pages = [
    GetPage(
      name: Paths.root,
      page: () => const MainScene(),
    ),
  ];
}
