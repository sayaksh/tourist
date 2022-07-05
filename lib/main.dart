import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:tourist/models/user.model.dart';

import 'dart:async';

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
    getData();
  }

  List<UserModel> data = [];

  getData() async {
    var d = await ServiceApi().getdata();
    setState(() {
      data = d;
    });
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
          body: ListView.builder(
              itemCount: data.length,
              itemBuilder: (c, i) {
                return ListTile(
                  title: Text(data[i].name),
                  subtitle: Text(data[i].email),
                );
              })),
    );
  }
}
