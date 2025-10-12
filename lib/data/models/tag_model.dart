import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
sealed class TagModel with _$TagModel {
  const TagModel._();

  const factory TagModel({required int id, required String name}) =
      _TagModel;

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);
}



// class BoardModel {
//   final int id;
//   final String name;

//   const BoardModel({required this.id, required this.name});

//   factory BoardModel.fromJson(Map<String, dynamic> json) {
//     return BoardModel(id: json['id'], name: json['name']);
//   }
// }