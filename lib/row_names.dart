import 'package:flutter/material.dart';

class row_name extends StatefulWidget {
  String name;
  int score;
  row_name({super.key, required this.name, required this.score});

  @override
  State<row_name> createState() => _row_nameState(name: name, score: score);
}

class _row_nameState extends State<row_name> {
  String name;
  int score;
  _row_nameState({required this.name, required this.score});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            score.toString(),
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
