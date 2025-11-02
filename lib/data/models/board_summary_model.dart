import 'package:flutter_application_1/data/models/users_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_summary_model.freezed.dart';
part 'board_summary_model.g.dart';

@freezed
sealed class BoardModel with _$BoardModel {
  const BoardModel._();

  const factory BoardModel({
    required String id,
    required String title,
    required DateTime createdAt,
    required UsersModel creator,
  }) = _BoardModel;

  factory BoardModel.fromJson(Map<String, dynamic> json) =>
      _$BoardModelFromJson(json);
}



// class BoardModel {
//   final int id;
//   final String name;

//   const BoardModel({required this.id, required this.name});

//   factory BoardModel.fromJson(Map<String, dynamic> json) {
//     return BoardModel(id: json['id'], name: json['name']);
//   }
// }