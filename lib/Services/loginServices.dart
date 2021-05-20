import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testapp/Model/usersModel.dart';

bool isLoading = false;
Future<User> authenticate({String phone, String password}) async {
  String api = "http://hrapplication.qgrocer.in/public/api/login";
  final body = {'phone': phone, 'password': password};
  final http.Response response = await http.post(Uri.parse(api), body: body);

  if (response.statusCode == 200) {
    print(response.body);

    var jsonString = response.body;
    isLoading = true;
    return User.fromJson(jsonDecode(jsonString));
  } else {
    return null;
    // throw Exception('Failed to create album.');
  }
}
