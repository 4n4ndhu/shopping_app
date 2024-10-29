import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/controller/category_controller.dart';
import 'package:shopping_app/controller/product_screen_controller.dart';
import 'package:shopping_app/view/get%20_started_screen/get_started_screen.dart';

void main() {
  runApp(ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductScreenController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CategoryController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetStartedScreen(),
      ),
    );
  }
}
