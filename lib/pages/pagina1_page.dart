import 'package:flutter/material.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Center(
        child: Text('Pagina 1'),
     ),
     floatingActionButton: FloatingActionButton(
      child: Icon(Icons.next_plan),
      onPressed: () => Navigator.pushNamed(context, 'pagina2'),
     ),
   );
  }
}