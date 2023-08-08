import 'package:flutter/material.dart';
import 'package:food_shop_ui/module/intro/view/intro_view.dart';
import 'package:food_shop_ui/module/menu/view/menu_view.dart';
import 'package:food_shop_ui/shared/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      home: const IntroView(),
      routes: {
        '/introview': (context) => const IntroView(),
        '/menuview': (context) => const MenuView(),
      },
    );
  }
}
