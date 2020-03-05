import 'package:flutter/material.dart';

class AvatartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/42/08/66/4208663b975818d75dbacb9926fd86cd.jpg"),
              radius: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      body: Center(
          child: FadeInImage(
        placeholder: AssetImage('assets/cargar.gif'),
        image: NetworkImage(
            'https://i.pinimg.com/originals/42/08/66/4208663b975818d75dbacb9926fd86cd.jpg'),
        fadeInDuration: Duration(milliseconds: 400),
      )),
    );
  }
}
