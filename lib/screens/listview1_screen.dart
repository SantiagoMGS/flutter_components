import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Chrono Trigger',
    'Final Fantasy',
    'Zelda'
  ];

  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView1Screen'),
        ),
        body: ListView(
          children: [
            ...options.map((e) => ListTile(
                title: Text(e),
                subtitle: const Text('Juegazo de la vida'),
                leading: const Icon(Icons.videogame_asset_outlined),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () => ())),
          ],
        ));
  }
}
