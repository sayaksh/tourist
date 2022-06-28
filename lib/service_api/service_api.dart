import 'dart:developer';

import 'package:http/http.dart' as http;

class ServiceApi {
  getData() async {
    final response =
        await http.get(Uri.parse('http://localhost:1337/api/districts'));

    log(response.body.toString());
  }

  //   if (response.statusCode == 200) {
  //     // If the server did return a 200 OK response,
  //     // then parse the JSON.
  //     return Districts.fromJson(jsonDecode(response.body));
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }
  // }
}
