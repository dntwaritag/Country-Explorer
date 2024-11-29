import 'package:flutter/material.dart';

import '../models/country_model.dart';

class DetailsScreen extends StatelessWidget {
  final Country country;

  const DetailsScreen({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(country.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(country.flag,
                height: 150, width: double.infinity, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text('Region: ${country.region}',
                style: const TextStyle(fontSize: 18)),
            Text('Population: ${country.population}',
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
