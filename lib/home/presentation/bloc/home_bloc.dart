import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemontest/home/contracts/pokemon_list_use_case.dart';
import 'package:pokemontest/home/data/models/pokemon_model.dart';
import 'package:pokemontest/home/domain/pokemon_list_impl_use_case.dart';
import "package:get_it/get_it.dart";

part 'home_event.dart';
part 'home_state.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PokemonListUseCase pokemonListUseCase =
      GetIt.instance.get<PokemonListUseCase>();

  HomeBloc(BuildContext context) : super(const HomeLoadindState()) {
    on<InitHomeEvent>((event, emit) {});
    on<AllPokemonsEvent>(_allPokemons);
  }

  _allPokemons(AllPokemonsEvent event, Emitter<HomeState> emit) async {
    List<PokemonUrl> listPokemon = await pokemonListUseCase.listPokemon();
    print(listPokemon);
    emit(HomeListPokemonState(listPokemon));
  }
}
