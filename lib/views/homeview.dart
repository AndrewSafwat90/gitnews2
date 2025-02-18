import 'package:flutter/material.dart';
import 'package:gitnews2/widgets/categoriesListView.dart';
import 'package:gitnews2/widgets/categorycard.dart';
import 'package:gitnews2/widgets/newsTile.dart';
import 'package:gitnews2/widgets/newslistviewbuilder.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                  text: 'News ',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoriesListView()),
          SliverToBoxAdapter(child: SizedBox(height: 6)),
          NewsListViewBuilder(category: 'general')
        ],
      ),
    );
  }
}
