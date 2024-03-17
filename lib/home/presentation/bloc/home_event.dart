part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
  List<PokemonUrl> get props => [];
}

class InitHomeEvent extends HomeEvent {
  const InitHomeEvent();
}

class AllPokemonsEvent extends HomeEvent {
  const AllPokemonsEvent();
  @override
  List<PokemonUrl> get props => [];
}
