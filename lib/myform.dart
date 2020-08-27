import 'package:flutter/material.dart';
import 'package:segundapractica/Persona.dart';
import 'package:segundapractica/Mascota.dart';
import 'package:segundapractica/info.dart';
import 'package:fluttertoast/fluttertoast.dart';

enum Owner { Duenio, Duenia }
enum Pet {Perro, Gato}
String type;
String sex;
String picture;
String Ppicture;
String ext;

class MyForm extends StatefulWidget {


  @override
  MyFormState createState() => MyFormState();
}

class MyFormState extends State<MyForm> {


  TextEditingController _nameController;
  TextEditingController _lastnameController;
  TextEditingController _ageController;

  int SelectedRadioPersona, SelectedRadio;

  TextEditingController _namePetController;
  TextEditingController _agePetController;

  Owner _owner = Owner.Duenia;
  Pet _pet = Pet.Gato;


  @override
  void initState() {
    super.initState();
    _nameController = new TextEditingController();
    _lastnameController= new TextEditingController();
    _ageController = new TextEditingController();
    _namePetController = new TextEditingController();
    _agePetController = new TextEditingController();
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
                          margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
                          height: 530,
                          width: 500,
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
                                        margin: EdgeInsets.fromLTRB(60, 60, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextFormField(
                                            controller: _nameController,
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
                                        margin: EdgeInsets.fromLTRB(60, 20, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextField(
                                            controller: _lastnameController,
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
                                        margin: EdgeInsets.fromLTRB(60, 20, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextField(
                                            controller: _ageController,
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
                                        margin: EdgeInsets.fromLTRB(60, 20, 0, 0),
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
                                                  value: Owner.Duenia,
                                                  activeColor: Color(0xff264434),
                                                  groupValue: _owner,
                                                  onChanged: (Owner value) {
                                                    setState(() {
                                                      _owner = value;
                                                    });
                                                  },
                                                ),
                                                Text('Dueño',
                                                    style: new TextStyle(fontSize: 16.0)
                                                ),
                                                Radio(
                                                  value: Owner.Duenio,
                                                  activeColor: Color(0xff264434),
                                                  groupValue: _owner,
                                                  onChanged: (Owner value) {
                                                    setState(() {
                                                      _owner = value;
                                                    });
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
                                        margin: EdgeInsets.fromLTRB(60, 20, 0, 0),
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
                                                 value: Pet.Gato,
                                                 activeColor: Color(0xff264434),
                                                 groupValue: _pet,
                                                 onChanged: (Pet value) {
                                                   setState(() {
                                                     _pet = value;
                                                   });
                                                 },
                                               ),
                                               Text('Perro',
                                                   style: new TextStyle(fontSize: 16.0)
                                               ),
                                               Radio(
                                                 value: Pet.Perro,
                                                 activeColor: Color(0xff264434),
                                                 groupValue: _pet,
                                                 onChanged: (Pet value) {
                                                   setState(() {
                                                     _pet = value;
                                                   });
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
                                        margin: EdgeInsets.fromLTRB(60, 20, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextField(
                                            controller: _namePetController,
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
                                        margin: EdgeInsets.fromLTRB(60, 20, 0, 0),
                                        width: 270,
                                        height: 40,
                                        child: Padding(
                                          padding: const EdgeInsets.all(7.0),
                                          child: TextField(
                                            controller: _agePetController,
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
                                        margin: EdgeInsets.fromLTRB(90, 20, 0, 0),
                                        width: 200,
                                        height: 35,
                                        child: RaisedButton(
                                          onPressed: (){

                                            int agePet = int.parse(_agePetController.text);
                                            int agePerson = int.parse(_ageController.text);
                                            String nameP = _nameController.text;
                                            String lastnameP = _lastnameController.text;
                                            String namePet = _namePetController.text;

                                            if(agePerson.isNegative){
                                              Fluttertoast.showToast(
                                                  msg: "Please enter a real age number",
                                                  toastLength: Toast.LENGTH_LONG,
                                                  gravity: ToastGravity.CENTER,
                                                  timeInSecForIosWeb: 1,
                                                  backgroundColor: Color(0xff5EC465),
                                                  textColor: Colors.black,
                                                  fontSize: 16.0);
                                            }else{
                                              if(agePet.isNegative){
                                                Fluttertoast.showToast(
                                                    msg: "Please enter a real age number",
                                                    toastLength: Toast.LENGTH_LONG,
                                                    gravity: ToastGravity.CENTER,
                                                    timeInSecForIosWeb: 1,
                                                    backgroundColor: Color(0xff5EC465),
                                                    textColor: Colors.black,
                                                    fontSize: 16.0);
                                              }else{
                                                if(_pet.toString() == "Pet.Gato"){
                                                  type = "Gato";
                                                  Ppicture = "images/cat.png";
                                                }else{
                                                  type = "Perro";
                                                  Ppicture = "images/dog.png";
                                                }

                                                if(_owner.toString() == "Owner.Duenia"){
                                                  sex = "Dueña";
                                                  picture = "images/woman.png";
                                                }else{
                                                  sex = "Dueño";
                                                  picture = "images/user.png";
                                                }

                                                if(agePerson == 1 ){
                                                  ext = "o";
                                                }else{
                                                  ext ="os";
                                                }

                                                if(agePet == 1 ){
                                                  ext = "o";
                                                }else{
                                                  ext ="os";
                                                }


                                                final persona = Persona(
                                                  name: nameP,
                                                  lastName: lastnameP,
                                                  age: agePerson,
                                                  sex: sex,
                                                  picture: picture,
                                                  Personext: ext,
                                                );

                                                final mascota = Mascota(
                                                  Pname: namePet,
                                                  Page: agePet,
                                                  type: type,
                                                  Ppicture: Ppicture,
                                                  ext: ext,
                                                );

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => MyInfo(person:persona, pet: mascota),
                                                  ),
                                                );
                                              }
                                            }


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
                          margin: EdgeInsets.fromLTRB(130, 120, 0, 0),
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