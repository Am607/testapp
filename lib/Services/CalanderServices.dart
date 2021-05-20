import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:testapp/Model/calenderModel.dart';


   var client = http.Client();

  Future<Calender> fetchCalander() async {
    String api =
        "http://hrapplication.qgrocer.in/public/api/admin_view_holiday";
    final response = await client.get(Uri.parse(api));
    if (response.statusCode == 200) {
      print(response.body);
      var jsonString = response.body;
      return Calender.fromJson(jsonDecode(jsonString));
    } else {
      //show error message
      throw Exception('Failed to load album');
    }
  }

