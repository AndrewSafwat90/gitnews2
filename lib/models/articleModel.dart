class ArticleModel {
  // ArticleModel class
  final String? imageUrl;
  final String title;
  final String? description;

  ArticleModel(
      {required this.imageUrl, required this.title, required this.description});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        imageUrl: json['urlToImage'],
        title: json['title'],
        description: json['description']);
  }
}
