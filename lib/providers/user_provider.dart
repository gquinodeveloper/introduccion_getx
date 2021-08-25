import 'package:app_get_contador/models/user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  Future<List<UserModel>> getUsers({required int page}) async {
    final dio = Dio();
    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": page,
      },
    );
    //print(response.data);
    return (response.data["data"] as List)
        .map((item) => UserModel.fromJson(item))
        .toList();
  }
}
