import 'package:cinema_na_mao/widgets/filme_widget.dart';
import 'package:flutter/material.dart';

class FilmesPage extends StatelessWidget {
  const FilmesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filmes'),),
      body: ListView(
        children: const [
          FilmeWidget(
            image: 'lib/images/oppenheimer.jpg',
            title: 'Oppenheimer',
            rating: '10/10',
          ),
          FilmeWidget(
            image: 'lib/images/tetlamt.jpg',
            title: 'Tudo em Todo Lugar ao Mesmo Tempo',
            rating: '10/10',
          ),
          FilmeWidget(
            image: 'lib/images/django.jpg',
            title: 'Django Livre',
            rating: '8/10',
          ),
          FilmeWidget(
            image: 'lib/images/Duna-Parte-2.jpg',
            title: 'Duna Parte 2',
            rating: '9/10',
          ),
          FilmeWidget(
            image: 'lib/images/bruxa.webp',
            title: 'A Bruxa',
            rating: '7/10',
          ),
        ],
      )
    );
  }
}