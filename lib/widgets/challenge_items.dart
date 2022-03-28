import 'package:flutter/material.dart';

class ItemsChallenge extends StatelessWidget {
  final String title;
  const ItemsChallenge({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 100,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.indigo,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(title,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
