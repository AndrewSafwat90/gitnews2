import 'package:flutter/material.dart';
import 'package:gitnews2/models/articleModel.dart';
import 'package:gitnews2/services/newsService.dart';
import 'package:gitnews2/widgets/newslistview.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewslistView(article: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return SliverFillRemaining(child: Text('Failed to loading Data'));
        } else {
          return SliverFillRemaining(
            child: SingleChildScrollView(
                child: Center(child: CircularProgressIndicator())),
          );
        }
      },
    );
  }
}
