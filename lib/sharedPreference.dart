import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference extends StatefulWidget {
  const SharedPreference({super.key});

  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("ison", isON);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Name";
  }

  Future<bool> getOn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              controller: controller,
            ),
            Switch(
              value: isON,
              onChanged: (newValue) {
                setState(() {
                  isON = newValue;
                });
              },
            ),
            ElevatedButton(
              child: Text("Save"),
              onPressed: () {
                saveData();
              },
            ),
            ElevatedButton(
              child: Text("Load"),
              onPressed: () {
                getNama().then((s) {
                  controller.text = s;
                  setState(() {});
                });
                getOn().then((b) {
                  isON = b;
                  setState(() {});
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
