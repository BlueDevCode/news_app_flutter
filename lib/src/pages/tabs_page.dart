
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
   const _Navegacion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      items:  const [
      BottomNavigationBarItem(icon: Icon(Icons.person_add_alt_1_outlined), label:("For you")),
      BottomNavigationBarItem(icon: Icon(Icons.public), label:("Headers")),
    ],);
     
  
  }
}

class _Paginas extends StatelessWidget {
  const _Paginas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      //physics: const BouncingScrollPhysics() ,
      physics: const NeverScrollableScrollPhysics(),
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