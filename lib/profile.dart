import 'package:flutter/material.dart';
import 'package:learn_flutter/userProfile.dart';

class ProfileLink extends StatelessWidget {
  final UserProfile profile = UserProfile(
    name: 'Nama User',
    role: 'Peran User',
    photoURL: "https://lalala.com/Photo.png",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text("Doc Comment Example"),
      ),
      body: Center(
        child: profile,
      ),
    );
  }
}
