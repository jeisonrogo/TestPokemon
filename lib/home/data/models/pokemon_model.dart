class Pokemon {
  final int count;
  final String next;
  final String previous;
  final List<PokemonUrl> results;

  Pokemon(
      {required this.count,
      required this.next,
      required this.previous,
      required this.results});

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
      count: json["count"],
      next: json["next"],
      previous: json["previous"],
      results: json["results"]);

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": results,
      };
}

class PokemonUrl {
  final String name;
  final String urlDetail;

  PokemonUrl({required this.name, required this.urlDetail});

  factory PokemonUrl.fromJson(Map<String, dynamic> json) =>
      PokemonUrl(name: json["name"], urlDetail: json["urlDetail"]);

  Map<String, dynamic> toJson() => {"name": name, "urlDetail": urlDetail};
}
