import 'dart:convert';
import 'package:flutter_application_1/data/models/board_list_model.dart';
import 'package:http/http.dart' as http;

class BoardApi {
  static const String _baseUrl = 'https://api.bulletin.newbies.gistory.me';

  Future<BoardListModel> getBoards() async {
    final url = Uri.parse('$_baseUrl/boards');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonList = json.decode(response.body);

        final BoardListModel boards = BoardListModel.fromJson(jsonList);

        return boards;
      } else {
        throw Exception('Failed to load tags from the server');
      }
    } catch (error) {
      throw Exception('Internal server error: $error');
    }
  }
}