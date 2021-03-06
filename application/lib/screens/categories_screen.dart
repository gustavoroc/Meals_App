
import 'package:flutter/material.dart';

import "../components/category_item.dart";
import "../data/dummy_data.dart";

class CategoriesScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Vamos Cozinhar?"),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2, // A razão : Cross-Axis / Main-Axis;
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: dummyCategories.map((cat) {
            return CategoryItem(cat);
          }).toList(),
        ),
      );
    }
}