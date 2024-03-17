import 'dart:convert';
import 'dart:html';

import 'package:injectable/injectable.dart';
import 'package:pokemontest/home/contracts/pokemon_repository.dart';
import 'package:pokemontest/home/data/models/pokemon_model.dart';
import 'package:http/http.dart';

@Injectable()
class PokemonRepositoryImpl extends PokemonRepository {
  final String _baseUrl = "";

  @override
  Future<Pokemon> allPokemons() async {
    Response response = await get(Uri.https(_baseUrl));
    print(response.body);
    Pokemon pokemon = Pokemon.fromJson(jsonDecode(response.body));
    return pokemon;
  }
}
