import 'package:flutter_application_1/data/models/board_summary_model.dart';
import 'package:flutter_application_1/data/models/image_model.dart';
import 'package:flutter_application_1/data/models/users_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
sealed class PostModel with _$PostModel{
  const PostModel._();

  const factory PostModel({
    required String id,
    required String title,
    required String body,
    required List<String> tags,
    required BoardModel board,
    required DateTime createdAt,
    required UsersModel createdBy,
    required List<ImageModel> images,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
