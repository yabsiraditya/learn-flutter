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
            Text(
              (user != null) ? "${user!.id} | ${user!.name}" : "Tidak Ada Data",
            ),
            ElevatedButton(
              onPressed: () {
                User.connectToAPI("5").then((value) {
                  user = value;
                  setState(() {});
                  print("Get Result: $user");
                }).catchError((error) {
                  print("Error: $error");
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
