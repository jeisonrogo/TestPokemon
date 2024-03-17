part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeLoadindState extends HomeState {
  const HomeLoadindState();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class HomeListPokemonState extends HomeState {
  final List<PokemonUrl> pokemonUrl;

  const HomeListPokemonState(this.pokemonUrl);

  @override
  List<Object?> get props => [pokemonUrl];
}
