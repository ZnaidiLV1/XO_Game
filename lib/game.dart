import 'package:flutter/material.dart';
import 'package:xo_game/auxiliere.dart';
import 'package:xo_game/names.dart';
import 'package:xo_game/row_names.dart';
import 'package:xo_game/square.dart';

class game extends StatefulWidget {
  String player1;
  int score_player1 ;

  String player2;
  int score_player2 ;
  game({super.key, required this.player1, required this.player2,required this.score_player1,required this.score_player2});

  @override
  State<game> createState() => _gameState(player1: player1, player2: player2, score_player1: score_player1, score_player2: score_player2);
}

class _gameState extends State<game> {
  String player1;
  int score_player1 ;

  String player2;
  int score_player2 ;

  String player = "START NOW";
  _gameState({required this.player1, required this.player2,required this.score_player1,required this.score_player2});
  String str = "";

  bool test_name = false;
  String valeur_XorO = "X";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  row_name(name: player1, score: score_player1),
                  row_name(name: player2, score: score_player2)
                ],
              ),
              auxiliere(
                player2: player2,
                col: Color.fromARGB(255, 37, 245, 26),
                x_y: '',
                player1: player1, score_player1: score_player1, score_player2: score_player2,
              ),
              MaterialButton(
                height: 60,
                minWidth: 180,
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>names()));
                },
                color: Color.fromARGB(255, 37, 245, 26),
                child: Text(
                  "RESTART",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.black,
                height: 149,
                width: 500,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
