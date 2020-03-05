import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[_cardTipo1(), SizedBox(height: 10), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 10,
      child: Stack(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                  image: NetworkImage(
                      "https://androidayuda.com/app/uploads-androidayuda.com/2014/01/Fondos-de-pantalla.jpg"))),
          Container(
              child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Primer Card',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                leading: Icon(
                  Icons.vpn_lock,
                  color: Colors.white,
                ),
                subtitle: Text(
                    'parrafo de primer card aljfadhgparrafo de primer card aljfadhg parrafo de primer card ',
                    style: TextStyle(color: Colors.white)),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Aceptar'),
                      color: Colors.blue[200],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text('Cancelar'),
                      color: Colors.blue[200],
                    ),
                  )
                ],
              )
            ],
          )),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: FadeInImage(
              image: NetworkImage("https://t.ipadizate.es/2017/09/1546.png"),
              placeholder: AssetImage('assets/cargar.gif'),
              fadeInDuration: Duration(milliseconds: 300),
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(50),
                  child: ListTile(
                    title: Text(
                      'Hola',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return Container(
      child: card,
    );
  }
}
