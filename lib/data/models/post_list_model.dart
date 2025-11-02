import 'package:flutter_application_1/data/models/post_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list_model.g.dart';
part 'post_list_model.freezed.dart';

@freezed
sealed class PostListModel with _$PostListModel {
  const PostListModel._();

  const factory PostListModel({
    required int count,
    required List<PostModel> list,
  }) = _PostListModel;

  factory PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);
}
