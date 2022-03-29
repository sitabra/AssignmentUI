import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsLessons extends StatelessWidget {
  final String title;

  const ItemsLessons({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.indigo.shade400,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(title,
            style: const TextStyle(fontSize: 20,color: Colors.white,fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
