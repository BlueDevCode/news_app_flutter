import 'package:flutter/material.dart';
import 'package:news_app_flutter/src/models/news_models.dart';
import "package:http/http.dart" as http;

const _URL_NEWS = "https://newsapi.org/v2/";
const _APIKEY = "ab093bb812ed4f78902605f6f64065a5";

class NewsService with ChangeNotifier {

  List <Article> headLines = [];
  NewsService(){
    getTopHeadLines();

  }

getTopHeadLines()async{
  const url = "$_URL_NEWS/top-headlines?apiKey=$_APIKEY&country=us";
  final resp = await http.get( Uri.parse(url));
  final newsResponse = newsResponseFromMap (resp.body);
 this.headLines.addAll(newsResponse.articles);
 notifyListeners();
}

 


}