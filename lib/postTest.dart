import 'package:flutter/material.dart';
import 'package:learn_flutter/post_result_model.dart';

class MethodPost extends StatefulWidget {
  @override
  State<MethodPost> createState() => _MethodPostState();
}

class _MethodPostState extends State<MethodPost> {
  PostResult? postResult;

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
              (postResult != null)
                  ? "${postResult!.id} | ${postResult!.name} | ${postResult!.job} | ${postResult!.created}"
                  : "Tidak Ada Data",
            ),
            ElevatedButton(
              onPressed: () {
                // Call the API and wrap the assignment in setState
                PostResult.connectToAPI("yabsir", "Gatau").then((value) {
                  setState(() {
                    postResult = value;
                  });
                  // Debugging: print result to console
                  print("Post Result: $postResult");
                }).catchError((error) {
                  print("Error: $error");
                });
              },
              child: Text("Post"),
            ),
          ],
        ),
      ),
    );
  }
}
