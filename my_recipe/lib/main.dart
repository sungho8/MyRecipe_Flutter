import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_recipe/route/app_router.dart';
import 'package:my_recipe/scenes/main/main_scene.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRouter.initialRoute,
      getPages: AppRouter.pages,
      home: const MainScene(),
    );
  }
}
