import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/intro_page.dart';
import 'package:shopping_app/models/cart.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Cart(),
    builder: (context, child) => MaterialApp(
      debugShowMaterialGrid: false,
      home: IntroPage(),
    ),
  ));
}
