import 'dart:convert';
import 'package:flutter_application_1/data/models/board_list_model.dart';
import 'package:flutter_application_1/data/models/board_summary_model.dart';
import 'package:http/http.dart' as http;

class TagApi {
  static const String _baseUrl = 'https://api.stg.ziggle.gistory.me';

  Future<TagListModel> getTags() async {
    final url = Uri.parse('$_baseUrl/tag');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> jsonList = json.decode(response.body);

        final List<TagModel> tags = jsonList.map((jsonItem) {
          return TagModel.fromJson(jsonItem);
        }).toList();

        return TagListModel(count: tags.length, list: tags);
      } else {
        throw Exception('Failed to load tags from the server');
      }
    } catch (error) {
      throw Exception('Internal server error: $error');
    }
  }
}
