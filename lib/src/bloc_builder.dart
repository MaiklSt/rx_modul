import 'package:flutter/material.dart';
import 'package:rx_modul/src/base_bloc.dart';

class BlocBuilder<T extends BaseBloc> extends StatelessWidget {
  final T bloc;
  final Object? initialData;
  final Widget Function(BuildContext context, AsyncSnapshot<Object> child) builder;
  const BlocBuilder({Key? key, required this.bloc, required this.builder, this.initialData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: bloc.blocStream,
      initialData: initialData,
      builder: builder,
    );
  }
}