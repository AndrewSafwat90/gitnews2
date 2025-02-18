import 'package:flutter/material.dart';
import 'package:gitnews2/models/categorymodel.dart';
import 'package:gitnews2/widgets/categorycard.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(image: 'assets/business.png', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertainment.png', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.png', categoryName: 'General'),
    CategoryModel(image: 'assets/health.png', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.png', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.png', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.png', categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryCard(categoryModel: categories[index]);
        },
      ),
    );
  }
}
