import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/src/models/category_models.dart';
import 'package:news_app/src/models/news_models.dart';
import 'package:http/http.dart' as http;


final _URL_NEWS = 'https://newsapi.org/v2';
final _APIKEY = '23a0d5f7d9794604a652aa2be0bf986d';

class NewsService with ChangeNotifier {

  List<Article> headlines = [];
  
  List<Category> categories = [
    Category(FontAwesomeIcons.building, 'business'),
    Category(FontAwesomeIcons.tv, 'entertainment'),
    Category(FontAwesomeIcons.addressCard, 'general'),
    Category(FontAwesomeIcons.headSideVirus, 'health'),
    Category(FontAwesomeIcons.vials, 'science'),
    Category(FontAwesomeIcons.volleyballBall, 'sports'),
    Category(FontAwesomeIcons.memory, 'technology'),
  ];

  NewsService() {
    this.getTopHeadlines();
  }

  getTopHeadlines() async {

    final url = Uri.parse('$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=us');
    final resp = await http.get(url);

    final newsResponse = newsResponseFromJson(resp.body);

    this.headlines.addAll(newsResponse.articles);
    notifyListeners();
  }

}