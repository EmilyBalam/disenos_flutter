import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final estilosubtitulo =
      TextStyle(fontSize: 12.0, color: Color.fromARGB(255, 48, 49, 49));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        _crearImagen(),
        _crearTitulo(),
        _crearAcciones(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto(),
        _crearTexto()
      ],
    )));
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
          'https://media.istockphoto.com/photos/hot-air-balloons-flying-over-the-botan-canyon-in-turkey-picture-id1297349747?b=1&k=20&m=1297349747&s=170667a&w=0&h=oH31fJty_4xWl_JQ4OIQWZKP8C6ji9Mz7L4XmEnbqRU=',
        ),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Paisaje con un globo aerostático',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'globo aerostático amarillo',
                    style: estilosubtitulo,
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 35.0,
            ),
            Text(
              '41',
              style: TextStyle(fontSize: 22.0),
            )
          ])),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        ),
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
      child: Text(
        'Commodo nisi commodo reprehenderit laboris sunt veniam do aliqua. Velit anim elit aliquip pariatur cupidatat. Sit laborum tempor duis do. Laborum commodo laborum excepteur proident quis commodo duis. Quis incididunt labore dolor reprehenderit aute consequat in. Nostrud aliqua exercitation consequat id commodo officia et deserunt consequat sunt',
        textAlign: TextAlign.justify,
      ),
    ));
  }
}
