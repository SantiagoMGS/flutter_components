import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Chrono Trigger',
    'Final Fantasy',
    'Zelda'
  ];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemBuilder: (_, index) => ListTile(
              title: Text(options[index]),
              subtitle: const Text('Juegazo de la vida'),
              leading: const Icon(Icons.videogame_asset_outlined),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => print(options[index])),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length,
        ));
  }
}
