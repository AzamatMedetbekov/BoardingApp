import 'dart:convert';

import 'package:flutter_application_1/data/models/board_model.dart';
import 'package:http/http.dart' as http;

class BoardApi {
  static const String _baseUrl = 'https://api.stg.ziggle.gistory.me';

  Future<List<BoardModel>> getBoards() async {
    final url = Uri.parse('$_baseUrl/tag');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);

        final List<BoardModel> boards = jsonList.map((jsonItem) {
          return BoardModel.fromJson(jsonItem);
        }).toList();

        return boards;
      } else {
        throw Exception('Failed to load boards from the server');
      }
    } catch (error) {
      throw Exception('Internal server error: $error');
    }
  }
}
