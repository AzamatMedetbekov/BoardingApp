import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart'

part 'post_api.g.dart';

@RestApi(baseUrl: 'https://api.stg.ziggle.gistory.me')
abstract class PostApi{
  factory PostApi(Dio dio, {String baseUrl}) = _PostApi;
  

}