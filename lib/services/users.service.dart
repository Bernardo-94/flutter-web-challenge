import 'package:catar_world_cup/constants.dart';
import 'package:catar_world_cup/models/user.model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserService {
  Future<List<UserModel?>> getUsers() async {
    try {
      final usersUrl = Uri.parse('$KApiUrl/users');
      final usersResponse = await http.get(usersUrl);
      final usersJson = jsonDecode(usersResponse.body);
      List<UserModel> users =
          usersJson.map<UserModel>((json) => UserModel.fromJson(json)).toList();

      return users;
    } catch (err) {
      return [];
    }
  }
}
