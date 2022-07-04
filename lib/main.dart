import 'dart:developer';

import 'package:flutter/material.dart';

import 'dart:async';

import 'package:tourist/models/districts.dart';
import 'package:tourist/service_api/service_api.dart';
import 'service_api/service_api.dart';

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

class CallingData extends StatefulWidget {
  const CallingData({Key? key}) : super(key: key);

  @override
  State<CallingData> createState() => _CallingDataState();
}

class _CallingDataState extends State<CallingData> {
  String txt = '';
  @override
  void initState() {
    super.initState();
  }

  //List<String> Result = data();

  late Future<Districts> futureDistrict;

  // Future<Attributes> getData() async {
  //   final response =
  //       await http.get(Uri.parse('http://localhost:1337/api/districts'));
  //   print(response.body.toString());

  //   if (response.statusCode == 200) {
  //     return Attributes.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to load album');
  //   }
  // }

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
            child: Column(children: [
              Text(txt),
              ElevatedButton(
                  onPressed: () async {
                    var data = await ServiceApi().getdata();
                    setState(() {
                      txt = data.toString();
                    });
                  },
                  child: const Text("Check")),
              const SizedBox(
                height: 30,
              ),
              //  Center(child: Text('data')),
            ]),
          ),
          // body: Center(
          //   child: FutureBuilder<Districts>(
          //     future: futureDistrict,
          //     builder: (context, snapshot) {
          //       if (snapshot.hasData) {
          //         var districtList = snapshot.data!.data;
          //         return ListView.builder(
          //           itemCount: districtList.length,
          //           itemBuilder: (context, index) {
          //             final item = districtList[index];

          //             return ListTile(
          //               title: Text(item.attributes.districtName),
          //               // subtitle: Text(item.attributes.stateId.toString()),
          //             );
          //           },
          //         );
          //       } else if (snapshot.hasError) {
          //         return Text('${snapshot.error}');
          //       }

          //       // By default, show a loading spinner.
          //       return const CircularProgressIndicator();
          //     },
          //   ),
          // ),
        ));
  }
}
