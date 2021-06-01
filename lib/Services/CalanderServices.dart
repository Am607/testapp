import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/Model/calenderModel.dart';

var client = http.Client();

Future<Calender> fetchCalander() async {
  String token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNDQxMTJiNzFhYjk3ZWUyZDMyZGQzZDJjZGE5ZTAwMmJkNDRkMmYyMjE1ZGY4YzI2Njg4M2Y5OTA0ODI2NGQxNDkzMDA1MmZmMjJjOTRkMGUiLCJpYXQiOjE2MjE4NTY1MTcsIm5iZiI6MTYyMTg1NjUxNywiZXhwIjoxNjUzMzkyNTE3LCJzdWIiOiIzOSIsInNjb3BlcyI6W119.WjQvoyCEXyY-QZFlagwCTB4vg6FLnC4a4L4CCHUfxwAl2NalVThVhWApZ26r5_cHtRtx7Y7lL4P3Uknqa66Hx7PimOiizGe9iwat--q8k0L5dSnRpAx1nltH9V86_qSRfN0t6KW-O38RjN6HmQesyRvlDf1Ov7Q8PfTPitujh5YHbm_KyTVLUhPp3vtxJb3DfW71BImklLdymGO0lR0_N33pTvtszS2jT0isrdpVcHjEEqUXmhygt4zLbX6j0qgVvpsWzzyricyQDdPp9_zBIHu2J03DQejH31TOsKNBovDoGDuhgB5Y8LnzeuUG2t2iy7jYNBKpG5PX7cz_7XYrA2-Y_Glq6NMaceJ3jswqpJYnrHvl_o-KAqSRAbSIqF9BzuqEMbNAs9WyHDuxiHt3Zhuj2fbFRygZB-qP0Ky9GuhzOdqKhAqPB40I7U4h3ZsiKZ-3RZd0rsYmecllJDUncuIvQyM4UTbuD6nbbc5he5S9IAMUk2_iMlNP_-_LJBA8SMv5qL-8cz9hzQAmA-rGFZuqEyvpmgDdqbnf9Lf22L71t4M9BWe8iADv8YyyZcwkRVxhXPAFiRslyTfuHS0BvaIZCvdHwqSlbnlzKI2DZKzfT8LxLqYJH5Yet3vRwus3WJ7SnMOCoLaNbodPstKniOGFwIMdWfaANDLKaAht9Ng";
  String api = "http://hrapplication.qgrocer.in/public/api/admin_view_holiday";
  String api1 = "http://markbuilders.in/admin/public/api/admin_view_holiday";
  final response = await client.get(Uri.parse(api1), headers: {
    'Authorization': 'Bearer $token',
  });
  if (response.statusCode == 200) {
    print(response.body);
    var jsonString = response.body;
    return Calender.fromJson(jsonDecode(jsonString));
  } else {
    //show error message
    throw Exception('Failed to load album');
  }
}
