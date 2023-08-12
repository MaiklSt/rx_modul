import 'dart:async';

class BaseBloc<T extends Object, K extends Object> {
  final _streamController = StreamController<T>.broadcast();
  StreamSink<T> get blocSink => _streamController.sink;
  Stream<T> get blocStream => _streamController.stream;

  final _eventController = StreamController<K>.broadcast();
  StreamSink<K> get eventSink => _eventController.sink;
  Stream<K> get eventStream => _eventController.stream;

  BaseBloc();
}