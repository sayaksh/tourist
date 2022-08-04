import 'package:flutter/material.dart';
import 'package:tourist/model/districts.dart';
import 'package:tourist/routes.dart';

import 'package:tourist/service/serviceapi.dart';

class DistrictsPage extends StatefulWidget {
  const DistrictsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DistrictsPage> createState() => _DistrictsPageState();
}

class _DistrictsPageState extends State<DistrictsPage> {
  List<Datum> data = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var districtsData = await ServiceApi().fetchData();

    setState(() {
      data = districtsData.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: ((context, i) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        // builder: (context) => const Bishnupur()
                        builder: (BuildContext context) => makeRoute(
                          context: context,
                          routeName: '/Bishnupur',
                          districtId: data[i].id,
                        ),
                      ));
                },
                child: Text(
                  data[i].attributes.districtName,
                  style: const TextStyle(fontSize: 20),
                )),
          );
        }));
  }
}
