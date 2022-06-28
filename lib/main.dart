import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:tourist/models/district.dart';
import 'package:tourist/models/districts.dart';

void main() {
  runApp(const CallingData());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CallingData(),
    );
  }
}

Future<Districts> fetchDistrict() async {
  final response =
      await http.get(Uri.parse('http://localhost:1337/api/districts'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Districts.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class CallingData extends StatefulWidget {
  const CallingData({Key? key}) : super(key: key);

  @override
  State<CallingData> createState() => _CallingDataState();
}

class _CallingDataState extends State<CallingData> {
  late Future<Districts> futureDistrict;

  @override
  void initState() {
    super.initState();
  }

  getdata() async {
    final d = await fetchDistrict();
    log(d.data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Fetch Data Example'),
          ),
          body: Center(
            child: FutureBuilder<Districts>(
              future: futureDistrict,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var districtList = snapshot.data!.data;
                  return ListView.builder(
                    itemCount: districtList.length,
                    itemBuilder: (context, index) {
                      final item = districtList[index];

                      return ListTile(
                        title: Text(item.attributes.districtName),
                        // subtitle: Text(item.attributes.stateId.toString()),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            ),
          ),
        ));
  }
}
