import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/blocSM.dart';
import 'package:learn_flutter/colorBloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorBloc>(
        create: (BuildContext context) => ColorBloc(),
        child: BlockSM(),
      ),
    );
  }
}
