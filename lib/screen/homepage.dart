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
              challengeItems(context),
              //tryItems(context),
              //tryingItems(),
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
          Text( 'Hi John', style: TextStyle(fontSize: 32),),
          SizedBox( height: 10,
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

  Widget lessonsItems(BuildContext context) {
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

  Widget challengeItems(BuildContext context) {
    return SizedBox(
        child: ListView.builder(
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 1.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 50,
                            height: 65,
                            child: CircleAvatar(
                              radius: 5,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0 ,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("10 Days Challenge", style: TextStyle(color: Colors.black54,
                                    fontSize: 15, fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text("Immediate Level", style: TextStyle(color: Colors.black54,
                                    fontSize: 12),),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          onPressed: () {},
                          color: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text('Join now',
                            style: TextStyle(
                              color: Colors.white,),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
        ),
    );
  }

  Widget tryItems(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text("10 days challenge",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black54),),
          const SizedBox(height: 5,),
          const Text("Immediate Level",
            style: TextStyle(
                fontSize: 12,
                color: Colors.black54),),
          const SizedBox(height: 9,),
          Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                print("Pressed");
              },
              child: const Center(
                child: Text('Join now',
                  style: TextStyle(
                    color: Colors.white,),),),
            ),
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.orangeAccent,),
          ),
        ],
      ),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
    );
  }

  Widget tryingItems() {
    return ListView.builder(
      itemCount: 7,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.green.shade300,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          hoverColor: Colors.blue,
          tileColor: Colors.black54,
          style: ListTileStyle.drawer,
          contentPadding: const EdgeInsets.all(5),
          leading: const CircleAvatar(),
          title: const Text(" 10 Days Challenge"),
          subtitle: Text('Level $index'),
          onTap: () {},
        ),
      ),
    );
  }

}
