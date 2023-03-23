
import 'package:flutter/material.dart';
import 'package:news_app_flutter/src/services/news_service.dart';
import 'package:news_app_flutter/src/widgets/lista_noticias.dart';
import 'package:provider/provider.dart';

class Tab1Page extends StatelessWidget {
   
  const Tab1Page ({Key? key}) : super(key: key);
  
  get headLines => null;
  
  @override
  Widget build(BuildContext context) {
    final  newsService = Provider.of <NewsService>(context).headLines;
    
    
    return  Scaffold(
      body: ListaNoticias(headLines, noticias: const [],)
    );
  }
}