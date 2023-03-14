
import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
   
  const TabsPage ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Paginas(),
      bottomNavigationBar: _Navegacion(),
      );
  }
}

class _Navegacion extends StatelessWidget {
   _Navegacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [],);
     
  
  }
}

class _Paginas extends StatelessWidget {
  const _Paginas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics() ,
      children: <Widget>[
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.green,
        )
      ],
      );
  }
}