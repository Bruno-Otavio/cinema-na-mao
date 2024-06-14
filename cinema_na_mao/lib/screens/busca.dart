import 'package:flutter/material.dart';
import 'package:cinema_na_mao/auth/secrets.dart';

class BuscaPage extends StatelessWidget {
  const BuscaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Busca'),),
      body: const Center(child: Text('Busca'),),
    );
  }
}