import 'package:flutter/material.dart';
import 'package:gitnews2/widgets/newslistviewbuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NewsListViewBuilder(
        category: category,
      ),
    );
  }
}
