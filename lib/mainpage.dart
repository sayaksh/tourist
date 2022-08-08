import 'package:flutter/material.dart';

import 'model/district.model.dart';

class MainDistrictPage extends StatefulWidget {
  const MainDistrictPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainDistrictPage> createState() => _MainDistrictPageState();
}

class _MainDistrictPageState extends State<MainDistrictPage> {
  // List<Datum> data = [];

  List<DistrictModel> listModels = [];

  List<Map<String, dynamic>> serverData = [
    {
      "id": 1,
      "attributes": {
        "state_id": 1,
        "district_name": "Kangpokpi",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": ""},
          {"spotName": "spot2", "img_url": ""},
          {"spotName": "spot3", "img_url": ""}
        ]
      }
    },
    {
      "id": 2,
      "attributes": {
        "state_id": 1,
        "district_name": "Imphal West",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": ""},
          {"spotName": "spot2", "img_url": ""},
          {"spotName": "spot3", "img_url": ""}
        ]
      }
    }
  ];

  @override
  void initState() {
    super.initState();
    convertMapToObject();
  }

  // getData() async {
  //   var districtsData = await ServiceApi().fetchData();

  //   setState(() {
  //     data = districtsData.data;
  //   });
  // }

  convertMapToObject() {
    var d = serverData.map((e) {
      return DistrictModel.fromJson(e);
    }).toList();

    setState(() {
      listModels = d;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Districts"),
      ),
      body: ListView.builder(
          itemCount: listModels.length,
          itemBuilder: ((context, i) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    listModels[i].attributes.districtName,
                    style: const TextStyle(fontSize: 20),
                  )),
            );
          })),
    );
  }
}
