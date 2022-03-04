import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondoApp(),
            SingleChildScrollView(
              child:
                  Column(children: <Widget>[_titulos(), _botonesRedondeados()]),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 0.4,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90.0),
            gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.6),
                end: FractionalOffset(0.0, 1.0),
                colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(241, 142, 172, 1.0)
                ])),
      ),
    );

    return Stack(
      children: <Widget>[gradiente, Positioned(top: -100.0, child: cajaRosa)],
    );
  }

  Widget _titulos() {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Classify Transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Classify This  Transaction into a particular category',
              style: TextStyle(color: Colors.white, fontSize: 19.0),
            ),
          ]),
    ));
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
            primaryColor: Colors.pinkAccent,
            textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 40.0,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bubble_chart,
              size: 40.0,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
            Icons.supervised_user_circle,
            size: 40.0,
          ))
        ]));
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(Colors.white, Icons.ac_unit, 'Texto1'),
          _crearBotonRedondeado(Colors.deepPurple, Icons.earbuds, 'Texto2')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(
              Colors.orangeAccent, Icons.wallet_travel, 'Texto3'),
          _crearBotonRedondeado(Colors.blueGrey, Icons.face_sharp, 'Texto4')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.tealAccent, Icons.radio, 'Texto5'),
          _crearBotonRedondeado(
              Colors.redAccent, Icons.cached_rounded, 'Texto6')
        ]),
        TableRow(children: [
          _crearBotonRedondeado(
              Colors.lightGreen, Icons.youtube_searched_for, 'Texto7'),
          _crearBotonRedondeado(Colors.blue, Icons.back_hand, 'Texto8')
        ])
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.6),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
              Text(
                texto,
                style: TextStyle(color: Colors.pink),
              ),
              SizedBox(height: 5.0),
            ],
          ),
        ));
  }
}
