import 'package:flutter_application_1/data/models/tag_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_list_model.freezed.dart';
part 'tag_list_model.g.dart';

@freezed
sealed class TagListModel with _$TagListModel {
  const TagListModel._();

  const factory TagListModel({
    required int count,
    required List<TagModel> list,
  }) = _TagListModel;

  factory TagListModel.fromJson(Map<String, dynamic> json) =>
      _$TagListModelFromJson(json);
}
