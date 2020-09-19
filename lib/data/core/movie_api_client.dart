import 'dart:convert';
import 'package:http/http.dart';
import 'package:movieapp/data/core/movie_api.dart';

class MovieApiClient {
  final Client _client;

  MovieApiClient(this._client);

//API CLIENT
  dynamic get(String path) async {
    final response = await _client.get(
      '${MovieApi.BASE_URL}$path?api_key=${MovieApi.API_KEY}',
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
