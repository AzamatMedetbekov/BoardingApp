import 'package:flutter_application_1/data/models/board_summary_model.dart';
  import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_list_model.freezed.dart';
part 'board_list_model.g.dart';

@freezed
sealed class BoardListModel with _$BoardListModel {
  const BoardListModel._();

  const factory BoardListModel({
    required int count,
    required List<BoardModel> list,
  }) = _BoardListModel;

  factory BoardListModel.fromJson(Map<String, dynamic> json) =>
      _$BoardListModelFromJson(json);
}
