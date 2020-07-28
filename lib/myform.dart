import 'package:flutter/material.dart';
import 'package:segundapractica/Persona.dart';
import 'package:segundapractica/info.dart';
import 'package:validators/validators.dart' as validator;


class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: MyCustomForm(),
      ),
    );
  }
}


class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {

  Persona p = new Persona();
  int SelectedRadioPersona, SelectedRadio;
  final myController = TextEditingController();



  @override
  void initState() {
    super.initState();
    SelectedRadioPersona = 0;
    SelectedRadio = 0;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  setSelectedRadio(int val){
    setState(() {
      SelectedRadio = val;
      SelectedRadioPersona = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(-0.4,-0.8),
                  stops: [0.0, 0.3, 0.6, 0.8, 1],
                  colors: [
                    Color(0xff264434),
                    Color(0xff3A8057),
                    Color(0xff5EC465),
                    Color(0xff9ED48F),
                    Color(0xffC3F8B4),
                  ],
                  tileMode: TileMode.repeated,
                ),
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 140, 0, 0),
                          height: 452,
                          width: 400,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0)
                              ),
                            ),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff264434),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                        ),
                                        margin: EdgeInsets.fromLTRB(40, 70, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextFormField(
                                            validator: (String value) {
                                              if (value.isEmpty) {
                                                return 'Enter your first name';
                                              }
                                              return null;
                                            },
                                            onSaved: (String value) {
                                              p.name = value;
                                            },
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: const BorderRadius.all(
                                                  const Radius.circular(10.0),
                                                ),
                                              ),
                                              fillColor: Color(0xffFFFFFF),
                                              filled: true,
                                              labelText: 'Nombre',
                                              labelStyle:  TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xffA8AA92),
                                              ),
                                            ),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ) ,

                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff264434),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                        ),
                                        margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: const BorderRadius.all(
                                                  const Radius.circular(10.0),
                                                ),
                                              ),
                                              fillColor: Color(0xffFFFFFF),
                                              filled: true,
                                              labelText: 'Apellidos',
                                              labelStyle:  TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xffA8AA92),
                                              ),
                                            ),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ) ,

                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff264434),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                        ),
                                        margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: const BorderRadius.all(
                                                  const Radius.circular(10.0),
                                                ),
                                              ),
                                              fillColor: Color(0xffFFFFFF),
                                              filled: true,
                                              labelText: 'Edad',
                                              labelStyle:  TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xffA8AA92),
                                              ),
                                            ),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ) ,

                                  Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.fromLTRB(45, 5, 0, 0),
                                        height: 40,
                                        width: 270,
                                        child: Row(
                                          children: [
                                            Text("Soy: ",
                                              style: TextStyle(
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            ButtonBar(
                                              children: <Widget>[
                                                Text('Dueña',
                                                    style: new TextStyle(fontSize: 16.0)
                                                ),

                                                Radio(
                                                  value: 1,
                                                  groupValue: SelectedRadioPersona,
                                                  activeColor: Color(0xff264434),
                                                  onChanged: (val){
                                                    print("Radio $val");
                                                    setSelectedRadio(val);
                                                  },
                                                ),
                                                Text('Dueño',
                                                    style: new TextStyle(fontSize: 16.0)
                                                ),
                                                Radio(
                                                  value: 2,
                                                  groupValue: SelectedRadioPersona,
                                                  activeColor: Color(0xff264434),
                                                  onChanged: (val){
                                                    print("Radio $val");
                                                    setSelectedRadio(val);
                                                  },

                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.fromLTRB(45, 5, 0, 0),
                                        height: 40,
                                        width: 270,
                                        child: Row(
                                         children: [
                                           Text("Tengo: ",
                                             style: TextStyle(
                                               fontSize: 16.0,
                                             ),
                                           ),

                                           ButtonBar(
                                             children: <Widget>[
                                               Text('Gato',
                                                   style: new TextStyle(fontSize: 16.0)
                                               ),

                                               Radio(
                                                 value: 1,
                                                 groupValue: SelectedRadio,
                                                 activeColor: Color(0xff264434),
                                                 onChanged: (val){
                                                   print("Radio $val");
                                                   setSelectedRadio(val);
                                                 },
                                               ),
                                               Text('Perro',
                                                   style: new TextStyle(fontSize: 16.0)
                                               ),
                                               Radio(
                                                 value: 2,
                                                 groupValue: SelectedRadio,
                                                 activeColor: Color(0xff264434),
                                                 onChanged: (val){
                                                   print("Radio $val");
                                                   setSelectedRadio(val);
                                                 },
                                               ),
                                             ],
                                           ),


                                         ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff264434),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                        ),
                                        margin: EdgeInsets.fromLTRB(40, 5, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: const BorderRadius.all(
                                                  const Radius.circular(10.0),
                                                ),
                                              ),
                                              fillColor: Color(0xffFFFFFF),
                                              filled: true,
                                              labelText: 'Nombre de mi mascota',
                                              labelStyle:  TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xffA8AA92),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ) ,

                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xff264434),
                                          border: Border.all(
                                            width: 0,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                        ),
                                        margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius: const BorderRadius.all(
                                                  const Radius.circular(10.0),
                                                ),
                                              ),
                                              fillColor: Color(0xffFFFFFF),
                                              filled: true,
                                              labelText: 'Edad de mi mascota',
                                              labelStyle:  TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xffA8AA92),
                                              ),
                                            ),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ) ,

                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(70, 10, 0, 0),
                                        width: 200,
                                        height: 35,
                                        child: RaisedButton(
                                          onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                builder: (context) => MyInfo(Persona:)
                                                )
                                            );
                                          },
                                          color: Color(0xff264434),
                                          textColor: Colors.white,
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(18.0))),
                                          child: Text('Registrar',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Color(0xffFFFFFF),
                                          ),
                                          ),
                                        ),

                                      ),
                                    ],
                                  ) ,

                                ],
                              ) ,

                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(110, 70, 0, 0),
                          width: 130,
                          height: 130,
                          //color: Colors.green ,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/icono_perro_gato.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                ]
                ),
                  ],
                ),
                ),
              ),
            ),
    );
  }
}