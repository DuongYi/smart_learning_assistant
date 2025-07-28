import 'package:smart_learning_assistant/modules/home/data/response/user_response.dart';

abstract interface class IHomeRepository {
  Future<List<UserResponse>> getUserData();
}
