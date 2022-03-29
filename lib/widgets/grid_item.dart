import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String title;
  final Icon icon;

  const GridItem({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 80,
          height: 100,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                ), //BoxShadow
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            //border: Border.all(),
            borderRadius: BorderRadius.circular(12),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(
                height: 4,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
