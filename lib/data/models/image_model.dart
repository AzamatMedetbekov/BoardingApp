import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
sealed class ImageModel with _$ImageModel {
  const ImageModel._();

  const factory ImageModel({required String image, required String id}) =
      _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}