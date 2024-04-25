import 'package:flutter/material.dart';
import 'package:xo_game/game.dart';
import 'package:xo_game/names.dart';
import 'package:xo_game/square.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class auxiliere extends StatefulWidget {
  String x_y;
  Color col;
  String player1;
  String player2;
  int score_player1;
  int score_player2;
  auxiliere(
      {super.key,
      required this.col,
      required this.x_y,
      required this.player1,
      required this.player2,
      required this.score_player1,
      required this.score_player2});

  @override
  State<auxiliere> createState() => _squareState(
      col: col,
      x_y: x_y,
      player1: player1,
      player2: player2,
      score_player1: score_player1,
      score_player2: score_player2);
}

class _squareState extends State<auxiliere> {
  String x_y;
  Color col;
  String player1;
  String player2;
  int score_player1;
  int score_player2;
  _squareState(
      {required this.col,
      required this.x_y,
      required this.player1,
      required this.player2,
      required this.score_player1,
      required this.score_player2});
  List data = ["", "", "", "", "", "", "", "", ""];
  bool test = false;
  String player = "START NOW";
  String str = "";
  bool test_name = false;
  bool verifier_win_x() {
    if ((data[0] == "X" && data[1] == "X" && data[2] == "X") ||
        (data[3] == "X" && data[4] == "X" && data[5] == "X") ||
        (data[6] == "X" && data[7] == "X" && data[8] == "X") ||
        (data[0] == "X" && data[3] == "X" && data[6] == "X") ||
        (data[1] == "X" && data[4] == "X" && data[7] == "X") ||
        (data[2] == "X" && data[5] == "X" && data[8] == "X") ||
        (data[0] == "X" && data[4] == "X" && data[8] == "X") ||
        (data[6] == "X" && data[4] == "X" && data[2] == "X")) {
      return true;
    } else {
      return false;
    }
  }

  bool verifier_null_x() {
    bool test_case_vide = true;
    int k = 0;
    while (k < data.length) {
      if (data[k] == "") {
        test_case_vide = false;
        break;
      } else {
        k = k + 1;
      }
    }
    if ((test_case_vide) && (!verifier_win_x())) {
      return true;
    } else {
      return false;
    }
  }

  void win_loose_x() {
    if ((verifier_win_x())) {
      AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.rightSlide,
          title: "CONGRATULATIONS ",
          desc: player1 + " WINS",
          btnCancelOnPress: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => names()));
          },
          btnOkOnPress: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => game(
                      player1: player1,
                      player2: player2,
                      score_player1: score_player1 + 1,
                      score_player2: score_player2,
                    )));
          },
          btnOkText: "revenge")
        ..show();
    } else if (verifier_null_x()) {
      AwesomeDialog(
          context: context,
          dialogType: DialogType.warning,
          animType: AnimType.rightSlide,
          title: "DRAW ",
          desc: 'NO ONE WINS',
          btnCancelOnPress: () {},
          btnOkOnPress: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => game(
                    player1: player1,
                    player2: player2,
                    score_player1: score_player1,
                    score_player2: score_player2)));
          },
          btnOkText: "AGAIN")
        ..show();
    } else {
      print("continue");
    }
  }

  bool verifier_win_y() {
    if ((data[0] == "O" && data[1] == "O" && data[2] == "O") ||
        (data[3] == "O" && data[4] == "O" && data[5] == "O") ||
        (data[6] == "O" && data[7] == "O" && data[8] == "O") ||
        (data[0] == "O" && data[3] == "O" && data[6] == "O") ||
        (data[1] == "O" && data[4] == "O" && data[7] == "O") ||
        (data[2] == "O" && data[5] == "O" && data[8] == "O") ||
        (data[0] == "O" && data[4] == "O" && data[8] == "O") ||
        (data[6] == "O" && data[4] == "O" && data[2] == "O")) {
      return true;
    } else {
      return false;
    }
  }

  bool verifier_null_y() {
    bool test_case_vide = true;
    int k = 0;
    while (k < data.length) {
      if (data[k] == "") {
        test_case_vide = false;
        break;
      } else {
        k = k + 1;
      }
    }
    if ((test_case_vide) && (!verifier_win_y())) {
      return true;
    } else {
      return false;
    }
  }

  void win_loose_y() {
    print("oooo " + verifier_win_y().toString());
    if ((verifier_win_y())) {
      AwesomeDialog(
          context: context,
          dialogType: DialogType.success,
          animType: AnimType.rightSlide,
          title: "CONGRATULATIONS ",
          desc: player2 + " WINS",
          btnCancelOnPress: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => names()));
          },
          btnOkOnPress: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => game(
                      player1: player1,
                      player2: player2,
                      score_player1: score_player1,
                      score_player2: score_player2 + 1,
                    )));
          },
          btnOkText: "revenge")
        ..show();
    } else if (verifier_null_y()) {
      AwesomeDialog(
          context: context,
          dialogType: DialogType.warning,
          animType: AnimType.rightSlide,
          title: "DRAW ",
          desc: 'NO ONE WINS',
          btnCancelOnPress: () {},
          btnOkOnPress: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => game(
                    player1: player1,
                    player2: player2,
                    score_player1: score_player1,
                    score_player2: score_player2)));
          },
          btnOkText: "AGAIN")
        ..show();
    } else {
      print("continue");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            player + str,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
          color: Color.fromARGB(255, 0, 0, 0),
          padding: EdgeInsets.all(20),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 1.2),
              itemCount: 9,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if (test_name == false) {
                          setState(() {
                            player = player1;
                            test_name = true;
                            data[i] = "X";
                            str = "'s turn";
                          });
                          win_loose_x();
                        } else {
                          setState(() {
                            player = player2;
                            test_name = false;
                            data[i] = "O";
                            str = "'s turn";
                          });
                          win_loose_y();
                        }
                      },
                      child: Container(
                        color: col,
                        child: Center(
                          child: Text(
                            data[i],
                            style: TextStyle(
                                color: Color.fromARGB(255, 85, 88, 90),
                                fontSize: 60,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
        )
      ],
    );
  }
}
