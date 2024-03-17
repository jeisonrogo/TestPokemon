import 'package:pokemontest/home/data/models/pokemon_model.dart';

abstract class PokemonRepository {
  Future<Pokemon> allPokemons();
}
