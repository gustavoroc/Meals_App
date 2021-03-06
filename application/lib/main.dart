import 'package:application/screens/categories_meals_screen.dart';
import 'package:application/utils/app_routes.dart';
import 'package:flutter/material.dart';
import "screens/categories_screen.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.indigo,
            secondary: Colors.amber,
          ),
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
            headline6: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed'
            ),
          ),
        ),
      routes: {
        AppRoutes.HOME: (context) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => CategoriesMealsScreen()
      }
    );
  }
}
