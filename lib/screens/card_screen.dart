import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://static.vecteezy.com/system/resources/previews/003/623/626/non_2x/sunset-lake-landscape-illustration-free-vector.jpg',
          ),
          // SizedBox(height: 20),
          // CustomCardType2(
          //   imageUrl: 'https://images.alphacoders.com/134/1341414.png',
          // ),
          // SizedBox(height: 20),
          // CustomCardType2(
          //   imageUrl: 'https://images3.alphacoders.com/133/1332803.png',
          //   name: 'Tremenda imagen',
          // ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
