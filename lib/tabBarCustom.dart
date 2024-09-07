import 'package:flutter/material.dart';

class TabBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
          color: Colors.red,
          border: Border(bottom: BorderSide(color: Colors.purple, width: 5))),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.comment),
          text: "Comment",
        ),
        Tab(
          icon: Icon(Icons.people),
          text: "Contact",
        ),
      ],
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text(
            "Contoh Tab Bar",
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                color: Colors.amber,
                child: myTabBar,
              )),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
          ],
        ),
      ),
    );
  }
}
