import 'package:flutter/material.dart';
import 'package:segundapractica/Persona.dart';


class MyInfo extends StatelessWidget {

  Persona persona;
  final String value;


  MyInfo({Key key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 0.4, 0.5, 0.7, 0.9],
              colors: [
                Color(0xffC3F8B4),
                Color(0xff9ED48F),
                Color(0xff5EC465),
                Color(0xff3A8057),
                Color(0xff264434),
              ],
              tileMode: TileMode.repeated,
            ),
          ),

          child: Center(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                    margin: EdgeInsets.fromLTRB(140, 20, 0, 0),
                    width: 80,
                    height: 80,
                    //color: Colors.green ,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/icono_perro_gato.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ),

                      Row(
                      children: <Widget>[
                       Container(
                        margin: EdgeInsets.fromLTRB(0,120, 0, 0),
                        height: 5,
                        width: 360,
                         color: Color(0xff264434),
                    ),
                  ],
                ),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(20,190, 0, 0),
                          height: 180,
                          width: 320,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(30,205, 0, 0),
                          height: 150,
                          width: 100,
                          color: Colors.green,
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(135,205, 0, 0),
                          height: 150,
                          width: 195,
                          color: Colors.blue,
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(105,368, 0, 0),
                          height: 100,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                            ),
                          ),
                        ),
                      ],
                    ),


                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(120,140, 0, 0),
                          height: 40,
                          width: 150,
                          //color: Color(0xff264434),
                          child: Text("Bienvenidos",
                            style: TextStyle(
                              color: Color(0xff264434),
                              fontFamily: 'DancingScript',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                ],
                ),
              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
