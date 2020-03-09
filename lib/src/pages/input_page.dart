import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Input de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {

    return TextField(

      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
         counter:Text('Letras ${_nombre.length }'),
         hintText: 'Nombre de la persona',
         labelText: 'nombre',
         helperText: 'Solo es el nombre',
         suffixIcon: Icon(Icons.account_balance),
         icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });

      },
      
    );

  }
  
  Widget _crearEmail() {

    return TextField(
      
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)
        ),
         hintText: 'Email',
         labelText: 'email',
         helperText: 'Solo es el nombre',
         suffixIcon: Icon(Icons.alternate_email),
         icon: Icon(Icons.email)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });

      },
      
    );

  }

  Widget _crearPersona(){
    
    return ListTile(
      title: Text('Nombre es $_nombre'),
    );
  }
}