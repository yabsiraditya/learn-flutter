import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

enum ColorEvent { to_amber, to_blue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.amber) {
    // Registering event handlers

    on<ColorEvent>((event, emit) {
      if (event == ColorEvent.to_amber) {
        emit(Colors.amber); // Emit new color state when toAmber is triggered
      } else if (event == ColorEvent.to_blue) {
        emit(Colors.blue); // Emit new color state when toBlue is triggered
      }
    });
  }

  // Color _color = Colors.amber;

  // StreamController<ColorEvent> _evenController = StreamController<ColorEvent>();
  // StreamSink<ColorEvent> get eventSink => _evenController.sink;

  // StreamController<Color> _stateController = StreamController<Color>();
  // StreamSink<Color> get _stateSink => _stateController.sink;
  // Stream<Color> get stateStream => _stateController.stream;

  // void _mapEventToState(ColorEvent colorEvent) {
  //   if (colorEvent == ColorEvent.to_amber) {
  //     _color = Colors.amber;
  //   } else {
  //     _color = Colors.blue;
  //   }

  //   _stateSink.add(_color);
  // }

  // ColorBloc() {
  //   _evenController.stream.listen(_mapEventToState);
  // }

  // void dispose() {
  //   _evenController.close();
  //   _stateController.close();
  // }
}
