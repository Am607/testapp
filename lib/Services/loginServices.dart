import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testapp/Model/usersModel.dart';

class APIServices {
  Future<User> authenticate({String phone, String password}) async {
    String api = "http://markbuilders.in/admin/public/api/login";
    final body = {'phone': phone, 'password': password};
    final http.Response response = await http.post(
      Uri.parse(api),
      body: body,
    );

    if (response.statusCode == 200) {
      print(response.body);
      print('login initiated');

      var jsonString1 = response.body;

      return User.fromJson(jsonDecode(jsonString1));
    } else {
      return null;
      // throw Exception('Failed to create something);
    }
  }
}
