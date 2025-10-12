import 'package:flutter_application_1/data/models/users_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_model.freezed.dart';
part 'notice_model.g.dart';

@freezed
sealed class NoticeModel with _$NoticeModel {
  const NoticeModel._();

  const factory NoticeModel({
    required int id,
    required String title,
    required String content,
    required UsersModel author,
    required String createdAt,
    required List<String> imageUrls,
  }) = _NoticeModel;

  factory NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeModelFromJson(json);
}
