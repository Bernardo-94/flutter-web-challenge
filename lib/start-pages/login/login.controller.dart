import 'package:catar_world_cup/models/user.model.dart';
import 'package:catar_world_cup/services/users.service.dart';

class LoginController {
  final service = UserService();
  Future<List<UserModel?>> getUsers() async {
    return await service.getUsers();
  }
}
