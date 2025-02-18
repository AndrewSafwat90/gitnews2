import 'package:flutter/material.dart';
import 'package:gitnews2/models/categorymodel.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10),
        height: 100,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(categoryModel.image), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Text(
            categoryModel.categoryName,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ));
  }
}
