import 'package:flutter/material.dart';
import 'package:news_app_flutter/src/pages/tabs_page.dart';
import 'package:news_app_flutter/src/services/news_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var miTema;
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> NewsService() ),
      ],
      child: MaterialApp(
        title: 'Material App',
        theme: miTema,
        debugShowCheckedModeBanner: false,
        home: const TabsPage()
      ),
    );
  }
}