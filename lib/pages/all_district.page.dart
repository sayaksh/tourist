import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tourist/router/router.gr.dart';

import '../model/district.model.dart';

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
        "district_name": "Bishnupur",
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
        "district_name": "Chandel",
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
      "id": 3,
      "attributes": {
        "state_id": 1,
        "district_name": "Churachandpur",
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
      "id": 4,
      "attributes": {
        "state_id": 1,
        "district_name": "Imphal East",
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
      "id": 5,
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
    },
    {
      "id": 6,
      "attributes": {
        "state_id": 1,
        "district_name": "Jiribam",
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
      "id": 7,
      "attributes": {
        "state_id": 1,
        "district_name": "Kakching",
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
      "id": 8,
      "attributes": {
        "state_id": 1,
        "district_name": "Kamjong",
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
      "id": 9,
      "attributes": {
        "state_id": 1,
        "district_name": "Kangpokpi (Sadar Hills)",
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
      "id": 10,
      "attributes": {
        "state_id": 1,
        "district_name": "Noney",
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
      "id": 11,
      "attributes": {
        "state_id": 1,
        "district_name": "Pherzawl",
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
      "id": 12,
      "attributes": {
        "state_id": 1,
        "district_name": "Senapati",
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
      "id": 13,
      "attributes": {
        "state_id": 1,
        "district_name": "Tamenglong",
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
      "id": 14,
      "attributes": {
        "state_id": 1,
        "district_name": "Tengnoupal",
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
      "id": 15,
      "attributes": {
        "state_id": 1,
        "district_name": "Thoubal",
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
      "id": 16,
      "attributes": {
        "state_id": 1,
        "district_name": "Ukhrul",
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
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "All Districts",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: listModels.length,
        itemBuilder: ((context, i) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: TextButton(
              onPressed: () {
                context.router.push(DistrictDetailRoute(
                    districName: listModels[i].attributes.districtName));
              },
              child: Text(
                listModels[i].attributes.districtName,
                style: const TextStyle(fontSize: 17),
              ),
            ),
          );
        }),
      ),
    );
  }
}
