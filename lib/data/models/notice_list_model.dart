import 'package:flutter_application_1/data/models/notice_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notice_list_model.g.dart';
part 'notice_list_model.freezed.dart';

@freezed
class NoticeListModel with _$NoticeListModel {
  const NoticeListModel._();

  factory NoticeListModel({required int total, required List<NoticeModel> list}) =
      _NoticeListModel;

  factory NoticeListModel.fromJson(Map<String, dynamic> json) =>
      _$NoticeListModelFromJson(json);
}
