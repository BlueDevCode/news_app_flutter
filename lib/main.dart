import 'package:flutter/material.dart';
import 'package:news_app_flutter/src/pages/tabs_page.dart';
import 'package:news_app_flutter/src/theme/tema.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Material App',
      theme: mitema ,
      debugShowCheckedModeBanner: false,
      home: TabsPage()
    );
  }
}