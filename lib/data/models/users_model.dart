import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
class UsersModel with _$UsersModel{
  const UsersModel._();

  factory UsersModel({
    required String uuid,
    required String name,
  }) = _UsersModel;

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
  _$UsersModelFromJson(json);
}

