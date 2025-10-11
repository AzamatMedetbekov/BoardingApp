import 'package:dio/dio.dart';
import 'package:flutter_application_1/data/models/post_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://api.stg.ziggle.gistory.me')
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
  
  @GET('/api/notice')
  Future<List<PostModel>> getPostListByTag(
    @Query('tags') String tag,
  );

  @GET('/api/notice')
  Future<List<PostModel>> getPostList();
}