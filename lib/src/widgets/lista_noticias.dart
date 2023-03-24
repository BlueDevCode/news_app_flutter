import 'package:flutter/material.dart';
import 'package:news_app_flutter/src/theme/tema.dart';

import '../models/news_models.dart';


class ListaNoticias extends StatelessWidget {
  final List  noticias ;
  const ListaNoticias(headLines, {super.key, required this.noticias});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: noticias.length,
      itemBuilder: (BuildContext context, int index) {

        return _Noticia(index: index, noticia: noticias[index]);
      },
      );
  }
}

class _Noticia extends StatelessWidget {
   final Article noticia;
   final int index;

  const _Noticia({required this.index, required this.noticia});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
          _TarjetaTopBar(noticia: noticia, index: index,)
        
      ],

    );
   
  }
}

class _TarjetaTopBar extends StatelessWidget {

  final Article noticia;
final int index;

  const _TarjetaTopBar({
    Key? key, required this.noticia, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget>[
        Text("${ index + 1}.",style:TextStyle( fontSize:20.0, color:miTema.colorScheme.secondary),),
      ],
    );
  }
}