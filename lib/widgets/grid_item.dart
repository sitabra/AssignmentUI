import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String title;
  final Icon icon;

  const GridItem({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {},
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
              Image.network("https://t3.ftcdn.net/jpg/01/24/51/90/360_F_124519029_D6FnFB2bHVxOoWThvUQhqU6LogBz17F4.jpg",
                height: 50,width: 50,fit: BoxFit.contain,),
              //icon,
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
