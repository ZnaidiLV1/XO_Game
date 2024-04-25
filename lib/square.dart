import 'package:flutter/material.dart';

class square extends StatefulWidget {
  String x_y;
  Color col;
  square(
      {super.key,
      required this.col,
      required this.x_y,});

  @override
  State<square> createState() =>
      _squareState(col: col, x_y: x_y, );
}

class _squareState extends State<square> {
  String x_y;
  Color col;
  _squareState(
      {required this.col,
      required this.x_y,});
  bool test_name = false;
  String player = "START NOW";
  String str = "";
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // if (test_name == false) {
        //   setState(() {
        //     player = player1;
        //     test_name = true;
        //     x_y = "X";
        //     str = "'s turn";
        //   });
        // } else {
        //   setState(() {
        //     player = player2;
        //     test_name = false;
        //     x_y = "O";
        //     str = "'s turn";
        //   });
        // }
      },
      child: Column(
        children: [
          
          Container(
            height: 120,
            width: 120,
            color: col,
            child: Center(
              child: Text(
                x_y,
                style: TextStyle(
                    color: const Color.fromARGB(255, 194, 204, 212),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
