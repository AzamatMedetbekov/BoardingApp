import 'package:dio/dio.dart';
import 'package:flutter_application_1/data/models/post_list_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://api.bulletin.newbies.gistory.me')
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
  
  @GET('/posts')
  Future<PostListModel> getPostListByTag(
    @Query('tags') String tag,
  );

  @GET('/posts')
  Future<PostListModel> getPostList();
}