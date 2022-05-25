import 'package:flutter/material.dart';

class TaskPage2 extends StatefulWidget {

  const TaskPage2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TaskPage2State();
  }
}

class TaskPage2State extends State<TaskPage2> {

  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Page ${selectedIndex+1}'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.question_mark_rounded),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.print),
          )
        ],
      ),
      body: Center(
        child: Text ('Page ${selectedIndex + 1}'),
      ),
      drawer: Drawer(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text('Page 1')
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                          Navigator.pop(context);
                        },
                        child: const Text('Page 2')
                    ),
                  ],
                )
            )
      ),
    );
  }

}