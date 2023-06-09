
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:news_app_flutter/src/services/news_service.dart';
import 'package:news_app_flutter/src/widgets/lista_noticias.dart';
import 'package:provider/provider.dart';

class Tab1Page extends StatelessWidget {
  const Tab1Page({super.key});

   
 
 
 
 
  @override
  Widget build(BuildContext context) {
    final  headlines = Provider.of <NewsService>(context).headlines;
    
    
    return  Scaffold(
      body: ListaNoticias(headlines, noticias: [],)
    );
  }
}