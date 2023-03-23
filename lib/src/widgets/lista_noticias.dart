import 'package:flutter/material.dart';

import '../models/news_models.dart';


class ListaNoticias extends StatelessWidget {
  final List  noticias ;
  const ListaNoticias(headLines, {super.key, required this.noticias});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noticias.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(noticias[index].title);
      },
      );
  }
}