import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:smart_learning_assistant/modules/home/data/response/user_response.dart';

part 'home_service.g.dart';

@RestApi()
abstract class HomeService {
  factory HomeService(Dio dio, {String baseUrl}) = _HomeService;

  @GET('/posts')
  Future<List<UserResponse>> getUserData();
}
