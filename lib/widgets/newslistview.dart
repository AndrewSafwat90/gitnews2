import 'package:flutter/material.dart';
import 'package:gitnews2/models/articleModel.dart';
import 'package:gitnews2/widgets/newsTile.dart';

class NewslistView extends StatelessWidget {
  const NewslistView({super.key, required this.article});
  final List<ArticleModel> article;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: article.length,
      (context, index) {
        return Newstile(articleModel: article[index]);
      },
    ));
  }
}
