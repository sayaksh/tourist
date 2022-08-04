import 'package:http/http.dart' as http;
import 'package:tourist/model/districts.dart';
import 'dart:async';

import 'dart:convert';

class ServiceApi {
  Future<Districts> fetchData() async {
    final response = await http.get(
        Uri.parse('https://kanglei-tourist-app.herokuapp.com/api/districts'));
    if (response.statusCode == 200) {
      return Districts.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Unexpected error occured!');
    }
  }

  postData(String districtName) async {
    var data = {
      "data": {"state_id": 1, "district_name": districtName}
    };
    final response = await http.post(
      Uri.parse('https://kanglei-tourist-app.herokuapp.com/api/districts'),
      body: jsonEncode(data),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      fetchData();
      // return Districts.fromJson(jsonDecode(response.body));
    } else {
      // throw Exception('Unexpected error occured!');
    }
  }

  putData(int districtID, String districtName) async {
    var data = {
      "data": {
        "state_id": 1,
        "district_ID": districtID,
        "district_name": districtName
      }
    };
    final response = await http.put(
      Uri.parse('https://kanglei-tourist-app.herokuapp.com/api/districts/' +
          districtID.toString()),
      body: jsonEncode(data),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      fetchData();
      // return Districts.fromJson(jsonDecode(response.body));
    } else {
      // throw Exception('Unexpected error occured!');
    }
  }

  deleteData(int districtId) async {
    final response = await http.delete(
      Uri.parse('https://kanglei-tourist-app.herokuapp.com/api/districts/' +
          districtId.toString()),
    );
    if (response.statusCode == 200) {
      fetchData();
      // return Districts.fromJson(jsonDecode(response.body));
    } else {
      // throw Exception('Unexpected error occured!');
    }
  }
}
