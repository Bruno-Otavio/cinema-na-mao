import 'package:cinema_na_mao/controller/filme_controller.dart';
import 'package:cinema_na_mao/models/filme_model.dart';
import 'package:cinema_na_mao/widgets/filme_widget.dart';
import 'package:flutter/material.dart';

class BuscaPage extends StatefulWidget {
  const BuscaPage({super.key});

  @override
  State<BuscaPage> createState() => _BuscaPageState();
}

class _BuscaPageState extends State<BuscaPage> {
  String query = '';
  final queryController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    queryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Busca'),
      ),
      body: Column(
        children: [
          _inputText(),
          Expanded(
            child: FutureBuilder(
              future: FilmeController.fetchFilmes(query),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final List<Filme> filmes = snapshot.data!;
                  return ListView.builder(
                    itemCount: filmes.length,
                    itemBuilder: (context, index) {
                      final Filme filme = filmes[index];
                      return FilmeWidget(
                        image: filme.poster,
                        title: filme.title,
                        type: 'network',
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Image.asset('lib/images/not-loaded.webp', width: 100,),
                  );
                }
            
                return const Center(child: CircularProgressIndicator(),);
              },
            ),
          )
        ],
      ),
    );
  }

  Padding _inputText() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(width: 2, color: Colors.grey.shade300),
                      bottom: BorderSide(width: 2, color: Colors.grey.shade300),
                      left: BorderSide(width: 2, color: Colors.grey.shade300),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 0.0,
                          color: Colors.grey.shade200)
                    ]),
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                child: TextField(
                  controller: queryController,
                  decoration: const InputDecoration(
                    hintText: 'Pesquisar',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  query = queryController.text;
                });
              },
              icon: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              style: IconButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                padding: const EdgeInsets.all(12),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
