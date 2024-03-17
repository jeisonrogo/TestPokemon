import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemontest/home/presentation/bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (BuildContext context, HomeState state) {
        return Center(
          child: TextButton(
            onPressed: () {},
            child: Text("Cargar lista de pokemons"),
          ),
        );
      },
    );
  }
}
