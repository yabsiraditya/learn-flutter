import 'package:flutter/material.dart';
import 'package:learn_flutter/post_result_model.dart';
import 'package:learn_flutter/user_model.dart';

class MethodPost extends StatefulWidget {
  @override
  State<MethodPost> createState() => _MethodPostState();
}

class _MethodPostState extends State<MethodPost> {
  PostResult? postResult;
  User? user;
  String output = "no data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Method"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(output),
            ElevatedButton(
              onPressed: () {
                User.getUsers("2").then((users) {
                  output = "";
                  for (var i = 0; i < users.length; i++)
                    output = output + "[ " + users[i].name + " ] ";
                  setState(() {});
                });
              },
              child: Text("GET"),
            ),
          ],
        ),
      ),
    );
  }
}
