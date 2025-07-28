import 'package:smart_learning_assistant/modules/home/repository/ihome_repository.dart';
import 'package:smart_learning_assistant/modules/home/application/home_service.dart';
import 'package:smart_learning_assistant/modules/home/data/response/user_response.dart';

class HomeRepository implements IHomeRepository {
  final HomeService _homeService;

  HomeRepository(this._homeService);

  @override
  Future<List<UserResponse>> getUserData() {
    return _homeService.getUserData();
  }
}
