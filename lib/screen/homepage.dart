import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController(viewportFraction: 0.87);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: const Icon(Icons.menu),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            greeting(),
            categoryItems(context),

            lessonsText(),
            //listView(context),
           // challenges(),
           // challengeItems(context),
           // tryItems(context),
          ],
        ),
      )),
    );
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
          Text(
            'You have completed\n6 lessons this week',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget categoryItems(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white60,
              child: Center(child: Text('$index')),
            );
          }),
    );
  }

  Widget lessonsText() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const Text('Today\'s lessons', style: TextStyle(fontSize: 15),),
         // ListView.builder(itemBuilder: itemBuilder)
        ],
      ),
    );
  }

  Widget listView(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.redAccent),
                child: const Center(
                  child: Text(
                    'List View 1',
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orangeAccent),
                child: const Center(
                  child: Text(
                    'List View 2',
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.greenAccent),
                child: const Center(
                  child: Text(
                    'List View 3',
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellowAccent),
                child: const Center(
                  child: Text(
                    'List View 4',
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent),
                child: const Center(
                  child: Text(
                    'List View 5',
                    style: TextStyle(fontSize: 20, color: Colors.white60),
                  ),
                ),
              ),
            ),
          ),
        ],
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
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
          body: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(height: 5);
              },
              itemBuilder: (context, index) {
                return Container(
                  height: 10,
                  color: Colors.blue,
                  child: Text('Item $index'),
                );
              },
              itemCount: 8)),
    );
  }

  Widget tryItems(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 2),
                  height: 50,
                  width: 50,
                  color: Colors.grey,
                  child: Center(child: Text('$index' + 'A')),
                );
              })),
    );
  }
}
