import 'package:cinema_na_mao/widgets/filme_widget.dart';
import 'package:flutter/material.dart';

class DestaquesPage extends StatelessWidget {
  const DestaquesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Destaques'),),
      body: ListView(
        children: const [
          FilmeWidget(
            image: 'lib/images/furiosa.webp',
            title: 'Furiosa: Uma Saga Madmax',
            rating: '7.8/10',
          ),
          FilmeWidget(
            image: 'lib/images/godzilla.jpg',
            title: 'Godzilla Minus One',
            rating: '7.8/10',
          ),
          FilmeWidget(
            image: 'lib/images/pobres-criatures.webp',
            title: 'Pobres Criaturas',
            rating: '7.9/10',
          ),
          FilmeWidget(
            image: 'lib/images/Duna-Parte-2.jpg',
            title: 'Duna Parte 2',
            rating: '9/10',
          ),
          FilmeWidget(
            image: 'lib/images/american-fiction.jpg',
            title: 'American Fiction',
            rating: '7.5/10',
          ),
        ],
      )
    );
  }
}

