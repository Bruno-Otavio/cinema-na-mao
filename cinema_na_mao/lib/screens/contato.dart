import 'package:flutter/material.dart';

class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contato'),),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 25,),
        
            Text(
              'Nos Contate',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
        
            SizedBox(height: 25,),
        
            Row(
              children: [
                Text(
                  'Telefone: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                ),
                Text('(19) 98114-9099'),
              ],
            ),
        
            Row(
              children: [
                Text(
                  'Email: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                ),
                Text('cinemanamao@email.com'),
              ],
            ),

            Row(
              children: [
                Text(
                  'Site: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),
                ),
                Text('www.cinemanamao.com.br'),
              ],
            ),
        
            SizedBox(height: 50,),
        
            Text(
              'Quem somos nós?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 25,),

            Text('''
                O aplicativo é uma ferramenta essencial para qualquer pessoa que ame cinema e séries, oferecendo uma experiência de entretenimento personalizada e emocionante.
              ''',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}