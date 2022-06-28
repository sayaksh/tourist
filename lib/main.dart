import 'package:flutter/material.dart';
import 'dart:async';

import 'package:tourist/models/districts.dart';
import 'package:tourist/service_api/service_api.dart';

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
  late Future<Districts> futureDistrict;

  @override
  void initState() {
    super.initState();
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
            child: ElevatedButton(
                onPressed: () async {
                  await ServiceApi().getData();
                },
                child: const Text("Check")),
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
