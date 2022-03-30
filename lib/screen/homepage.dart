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
      child: Row(
        children: [
          Column(
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
              Divider(
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(width: 40,),
          Image.network("https://www.freevector.com/uploads/vector/preview/30715/Hiking_On_Summer.jpg",
            height: 150,
          width: 150,
          fit: BoxFit.contain,),
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
        children: const [
          Text(
            'Today\'s lessons',
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
          ),
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
          itemBuilder: (context, index) {
            return const ItemsLessons(title: 'Greetings');
          }),
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
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
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
                margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ]
                ),
                child: Row(
                  children: [
                    Image.network("https://www.creativefabrica.com/wp-content/uploads/2020/09/01/Todo-list-and-time-management-Graphics-5217842-1.jpg",
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text(
                          "10-days challenge",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Immediate level $index",
                            style: const TextStyle(fontSize: 12)),
                        const SizedBox(
                          height: 5,
                        ),
                        FlatButton(
                          color: Colors.orange.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),),
                          child: const Text("Join Now", style: TextStyle(color: Colors.white),),
                          onPressed: (){

                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
      ),
    );
  }

  Widget tryItems(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            "10 days challenge",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Immediate Level",
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
          const SizedBox(
            height: 9,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                print("Pressed");
              },
              child: const Center(
                child: Text(
                  'Join now',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
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
