import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter/colorBloc.dart';

class BlockSM extends StatefulWidget {
  const BlockSM({super.key});

  @override
  State<BlockSM> createState() => _BlockSMState();
}

class _BlockSMState extends State<BlockSM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              context.read<ColorBloc>().add(ColorEvent.to_amber);
            },
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              context.read<ColorBloc>().add(ColorEvent.to_blue);
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Bloc Tanpa Library"),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, color) {
            return AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: 100,
              height: 100,
              color: color,
            );
          },
        ),
      ),
    );
  }
}
