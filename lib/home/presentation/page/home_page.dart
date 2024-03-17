import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemontest/home/presentation/bloc/home_bloc.dart';
import 'package:pokemontest/home/presentation/views/home_view.dart';
import "package:get_it/get_it.dart";

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('pokemon test'),
      ),
      body: BlocProvider<HomeBloc>(
        create: (_) => HomeBloc(context), //GetIt.instance.get<HomeBloc>(),
        child: const HomeView(),
      ),
    );
  }
}
