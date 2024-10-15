import 'package:flutter/material.dart';

/// class userprofile di gunakan untuk menampilkan profile user ke layar dengan indah
class UserProfile extends StatelessWidget {
  /// fiel ini digunakan untuk menyimpan nama user
  final String name;
  final String role;
  final String? photoURL;

  /// * [name] berisi nama user. Nilai defaultnya adalah `No Name`
  ///
  /// * [role] berisi peran/jabatan dari user. Nilai defaultnya adalah `No Rule`
  ///
  /// * [photoURL] berisi link **photo user**. Nilai defaulnya adalah `null`
  ///
  /// Contoh :
  /// ```
  /// final UserProfile profile = UserProfile(
  /// name: 'Nama User',
  /// role: 'Peran User',
  /// photoURL: "https://lalala.com/Photo.png",
  /// );
  ///
  /// ```
  UserProfile({
    this.name = "No Name",
    this.role = "No Role",
    this.photoURL,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image(
          // ignore: unnecessary_null_comparison
          image: NetworkImage(
            photoURL ??
                "https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-512.png",
          ),
          fit: BoxFit.cover,
          width: 200,
          height: 200,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "[" + role + "]",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
