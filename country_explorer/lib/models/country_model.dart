class Country {
  final String name;
  final String flag;
  final String region;
  final int population;

  Country({
    required this.name,
    required this.flag,
    required this.region,
    required this.population,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'],
      flag: json['flag'],
      region: json['region'],
      population: json['population'],
    );
  }
}
