import 'package:flutter/material.dart';
import 'package:uihomepage/widgets/grid_item.dart';
import 'package:uihomepage/widgets/items_lessons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        ///app bar
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          leading: const Icon(Icons.menu),
        ),

        ///body content
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greeting(),
              categoryItems(context),
              lessonsText(),
              lessonsItems(context),
              challenges(),
              challengeItems(),
              //tryItems(context),
            ],
          ),
        ));
  }

  Widget greeting() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hi John',
            style: TextStyle(fontSize: 32),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'You have completed\n6 lessons this week',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget categoryItems(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: GridView.builder(
          primary: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return const GridItem(
                title: 'Listening', icon: Icon(Icons.headphones_rounded));
          }),
    );
  }

  Widget lessonsText() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  const [
          Text('Today\'s lessons', style: TextStyle(fontSize: 15),),
        ],
      ),
    );
  }

  Widget lessonsItems(BuildContext context){
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index) {
            return const ItemsLessons(title: 'Greetings');
          }
      ),
    );
  }

  Widget challenges() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Challenges',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget challengeItems() {
    return ListView.builder(
      itemCount: 7,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => ListTile(
        leading: const CircleAvatar(),
        title: const Text(" 10 Days Challenge"),
        subtitle: Text('Level $index'),
        onTap: () {},
      ),
    );
  }

  Widget tryItems(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  height: 50,
                  width: 50,
                  color: Colors.grey,
                  child: Center(child: Text('$index A')),
                );
              })),
    );
  }
}
