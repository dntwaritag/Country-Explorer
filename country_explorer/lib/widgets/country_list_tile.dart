import 'package:flutter/material.dart';

import '../models/country_model.dart';

class CountryListTile extends StatelessWidget {
  final Country country;
  final VoidCallback onTap;

  const CountryListTile({Key? key, required this.country, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          Image.network(country.flag, width: 50, height: 30, fit: BoxFit.cover),
      title: Text(country.name),
      subtitle: Text(country.region),
      onTap: onTap,
    );
  }
}
