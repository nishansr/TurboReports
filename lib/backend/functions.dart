import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsapp/utils/key.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=' + Key.key),
  );
  Map result = jsonDecode(response.body);
  print('Fetched');

  return (result['articles']);
}
