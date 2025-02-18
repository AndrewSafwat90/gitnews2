import 'package:flutter/material.dart';
import 'package:gitnews2/models/articleModel.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: articleModel.imageUrl != null
                ? Image.network(articleModel.imageUrl!,
                    errorBuilder: (context, error, stackTrace) {
                    return Image.network(
                      'https://wallpapers.com/images/high/breaking-news-background-1500-x-946-ptptftteduff9krr.webp',
                      fit: BoxFit.cover,
                    );
                  })
                : Container(
                    height: 200,
                    child: Center(child: Text('Loading Faied')),
                  )),
        const SizedBox(height: 16),
        Text(articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        Text(articleModel.description != null ? articleModel.description! : '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey)),
      ],
    );
  }
}
