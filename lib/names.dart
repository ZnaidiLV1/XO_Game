import 'package:flutter/material.dart';
import 'package:xo_game/game.dart';

class names extends StatefulWidget {
  const names({super.key});

  @override
  State<names> createState() => _namesState();
}

class _namesState extends State<names> {
  GlobalKey<FormState> form_key1 = GlobalKey();
  GlobalKey<FormState> form_key2 = GlobalKey();
  TextEditingController cont_form1 = TextEditingController();
  TextEditingController cont_form2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "enter your names",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
          )),
      body: ListView(children: [
        Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text(
                  "First player name",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Form(
                    key: form_key1,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "field must not be empty";
                        }
                      },
                      controller: cont_form1,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_4_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 150, 219, 11),
                          ),
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 218, 215, 215)),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: "tap here",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16)),
                      cursorColor: Colors.white,
                    )),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text(
                  "Second player name",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Form(
                    key: form_key2,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "field must not be empty";
                        }
                      },
                      controller: cont_form2,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_4_rounded,
                            size: 30,
                            color: Color.fromARGB(255, 150, 219, 11),
                          ),
                          labelStyle: TextStyle(
                              color: const Color.fromARGB(255, 218, 215, 215)),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          hintText: "tap here",
                          hintStyle:
                              TextStyle(color: Colors.black, fontSize: 16)),
                      cursorColor: Colors.white,
                    )),
              ),
              MaterialButton(
                color: Color.fromARGB(255, 150, 219, 11),
                textColor: const Color.fromARGB(255, 0, 0, 0),
                onPressed: () {
                  // if (form_key1.currentState!.validate() &&
                  //     form_key2.currentState!.validate()) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => game(
                              player1: cont_form1.text,
                              player2: cont_form2.text,
                              score_player1: 0,
                              score_player2: 0,
                            )));
                //}
                },
                child: Text(
                  "VALIDATE",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
