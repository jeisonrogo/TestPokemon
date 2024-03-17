import '../data/models/pokemon_model.dart';

abstract class PokemonListUseCase {
  Future<List<PokemonUrl>> listPokemon();
}
