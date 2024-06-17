import 'dart:convert';

import 'package:cinema_na_mao/auth/secrets.dart';
import 'package:http/http.dart' as http;
import 'package:cinema_na_mao/models/filme_model.dart';

class FilmeController {
  static Future<List<Filme>> fetchFilmes(query) async {
    final response = await http
      .get(Uri.parse('http://www.omdbapi.com/?apikey=$apikey&s=$query'));

    if (response.statusCode == 200) {
      final List body = jsonDecode(response.body)['Search'];

      return body.map((e) => Filme.fromJson(e),).toList();
    } else {
      throw Exception('Failed to load Movies');
    }
  }
}
