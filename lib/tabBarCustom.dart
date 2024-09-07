import 'package:flutter/material.dart';

class TabBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text(
            "Contoh Tab Bar",
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.comment),
                text: "Comment",
              ),
              Tab(
                icon: Icon(Icons.people),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.note),
                text: "Note",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Setting",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
            Center(
              child: Text("Tab 3"),
            ),
            Center(
              child: Text("Tab 4"),
            ),
          ],
        ),
      ),
    );
  }
}
