
import 'package:flutter/material.dart';

class TaskPage1 extends StatefulWidget{

  const TaskPage1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TaskPage1State();
  }

}

class TaskPage1State extends State<TaskPage1> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page ${selectedIndex+1}'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark_rounded)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.print)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Page 1',
            icon: Icon(Icons.map),
          ),
          BottomNavigationBarItem(
            label: 'Page 2',
            icon: Icon(Icons.question_mark_rounded),
          ),
        ],
        onTap: itemTapped,
      ),
      body: Center(
        child: Text('Page ${selectedIndex+1}'),
      ),
    );
  }

  void itemTapped(int itemIndex) {
    setState(() {
      if (itemIndex == 0) {
        selectedIndex = 0;
      } else {
        selectedIndex = 1;
      }
    });
  }
}