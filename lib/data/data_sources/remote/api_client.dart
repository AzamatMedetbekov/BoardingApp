import 'package:dio/dio.dart';
import 'package:flutter_application_1/data/models/notice_list_model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://api.stg.ziggle.gistory.me')
abstract class ApiClient{
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;
  
  @GET('/api/notice')
  Future<NoticeListModel> getPostListByTag(
    @Query('tags') String tag,
  );

  @GET('/api/notice')
  Future<NoticeListModel> getPostList();
}