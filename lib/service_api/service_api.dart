import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/districts.dart';

class ServiceApi {
  getdata() async {
    //var dataok = {"district_name": "Langthabal"};
    final response = await http.get(
        Uri.parse('http://localhost:1337/api/districts/1')
        //     , body: {
        //   "data": {
        //     "attributes":
        //         {"id": 8.toString(), "attributes": "districts_name"}.toString()
        //   }.toString()
        // }
        );

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return jsonDecode(response.body);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
