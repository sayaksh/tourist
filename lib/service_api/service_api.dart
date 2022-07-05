import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:tourist/models/user.model.dart';

class ServiceApi {
  Future<List<UserModel>> getdata() async {
    //var dataok = {"district_name": "Langthabal"};
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      var data = response.body;
      var d = jsonDecode(data) as List;
      var user = d.map((e) => UserModel.fromJson(e)).toList();

      return user;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
