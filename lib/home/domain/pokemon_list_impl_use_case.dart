import 'dart:html';

import 'package:injectable/injectable.dart';
import 'package:pokemontest/home/contracts/pokemon_list_use_case.dart';
import 'package:pokemontest/home/contracts/pokemon_repository.dart';
import 'package:pokemontest/home/data/models/pokemon_model.dart';

@Injectable()
class PokemonListUseCaseImpl extends PokemonListUseCase {
  final PokemonRepository pokemonRepository;

  PokemonListUseCaseImpl(this.pokemonRepository);

  @override
  Future<List<PokemonUrl>> listPokemon() async {
    Pokemon pokemon = await pokemonRepository.allPokemons();
    print(pokemon);
    return pokemon.results;
  }
}
