import 'package:flutter/material.dart';
import 'package:segundapractica/Persona.dart';
import 'package:segundapractica/Mascota.dart';
import 'package:segundapractica/myform.dart';

String ext;


class MyInfo extends StatelessWidget{

  Persona person;
  Mascota pet;
  MyInfo({this.person, this.pet});



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
                    margin: EdgeInsets.fromLTRB(160, 20, 0, 0),
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
                        width: 390,
                         color: Color(0xff264434),
                    ),
                  ],
                ),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(20,190, 0, 0),
                          height: 180,
                          width: 350,
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
                          width: 125,
                          //color: Colors.green,
                          child: Image.asset(person.picture),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(160,205, 0, 0),
                          height: 150,
                          width: 200,
                          //color: Colors.blue,
                          child: Center(
                            child: Column(
                              children: [
                                Text(" ${person.name} ${person.lastName} ${person.age} añ${person.Personext} de edad.", style: TextStyle(fontSize: 16.5, fontStyle: FontStyle.italic),),
                                Padding(padding: EdgeInsets.only(top: 8.0),),
                                Divider(),
                                new Text("${person.sex} de un ${pet.type}", style: TextStyle(fontSize: 16.5, fontStyle: FontStyle.italic),),
                                Padding(padding: EdgeInsets.only(top: 8.0),),
                                Divider(),
                                new Text("de ${pet.Page} añ${pet.ext} llamado ${pet.Pname} : ", style: TextStyle(fontSize: 16.5, fontStyle: FontStyle.italic),),
                                Padding(padding: EdgeInsets.only(top: 8.0),),
                                Divider(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(100,370, 0, 0),
                          height: 105,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                            ),
                          ),
                          child: Image.asset(pet.Ppicture),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(160,580, 0, 0),
                          height: 70,
                          width: 70,
                          child: GestureDetector(
                           child:Image.asset("images/home.png"),
                            onTap:(){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyForm(),
                                ),
                              );
                            },

                          ),
                        ),
                      ],
                    ),


                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(100,130, 0, 0),
                          height: 50,
                          width: 200,
                          //color: Color(0xff264434),
                          child: Text("Bienvenidos",
                            style: TextStyle(
                              color: Color(0xff264434),
                              fontFamily: 'DancingScript',
                              fontSize: 45.0,
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

