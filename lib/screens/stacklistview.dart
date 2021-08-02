import 'package:flutter/material.dart';
import 'package:task_1_internee/widgets/colored_numbered_container.dart';

class StackListView extends StatefulWidget {
  @override
  _StackListViewState createState() => _StackListViewState();
}

class _StackListViewState extends State<StackListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 123456789,
                  child: null,
                ),
              ],
            )
          ],
        ),
        body: Stack(children: [
          ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              ColoredNumberedContainer(Colors.pink, 0),
              ColoredNumberedContainer(Colors.pinkAccent, 1),
              ColoredNumberedContainer(Colors.blueGrey, 2),
              ColoredNumberedContainer(Colors.deepPurpleAccent, 3),
              ColoredNumberedContainer(Colors.cyan, 4),
            ],
          )
        ]));
  }
}
