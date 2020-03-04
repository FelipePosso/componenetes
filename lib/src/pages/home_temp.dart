import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes')
      ),
      body: ListView(
        children: _crearItems(), 
        
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {

      final tempWidget = ListTile(
        title: Text(opt),
        leading: Icon(Icons.ac_unit),
        trailing: Icon(Icons.arrow_right),
      );
      
      lista..add(tempWidget)
           ..add(Divider());
    }
    return lista;

  /*List<Widget> _crearItemsCorta(){
      return opciones.map( ( item ) {
        return Column(
          children: <Widget>[
            ListTile(
              title:  Text(item + '!'),
            ),
            Divider()
          ],
        ); 
      }).toList();
  }*/
  

  }
}