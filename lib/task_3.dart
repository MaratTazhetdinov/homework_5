import 'package:flutter/material.dart';

class TaskPage3 extends StatefulWidget {

  const TaskPage3({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TaskPage3State();
  }
}

class TaskPage3State extends State<TaskPage3> {

  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Main Page'),
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
      drawer: Drawer(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.brown),
                      onPressed: () {
                        setState(() {
                          color = Colors.brown;
                        });
                        Navigator.pop(context);
                      },
                      child: const Text('Brown'),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(primary: Colors.yellow),
                      onPressed: () {
                        setState(() {
                          color = Colors.yellow;
                        });
                        Navigator.pop(context);
                      },
                      child: const Text('Yellow'),
                  ),
                ],
              )
          )
      ),
    );

  }

}