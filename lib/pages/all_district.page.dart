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
        "description":
            "   Bishnupur District with its headquarter at Bishnupur (27 Km. from Imphal) was opened on 25-05-1983. Stretching between 93.43 degree E and 93.53 degree E Longitudes and 24.18 degree N and 24.44 degree N Latitudes the total geographical area of the District is 530 Sq. Km. It is bounded on the North by Imphal West District, on the South by Churachandpur District, on the East  by Imphal and Thoubal Districts.",
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
        "description":
            "   The Chandel District (formerly known as Tengnoupal District) came into existence on May 13, 1974. It was renamed Chandel District in 1983. This is one of the three most backward districts in Manipur that is receiving funds from Backward Regions Grant Fund Program. This is the second least populous district in Manipur after Tamenglong. NH 39 passes through this district.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "bishnupur/loktak_lake.jpg"},
          {"spotName": "spot2", "img_url": "bishnupur/keibul_lamjao_4.jpg"},
          {"spotName": "spot3", "img_url": "bishnupur/loukoi_pat_1.jpg"}
        ]
      }
    },
    {
      "id": 3,
      "attributes": {
        "state_id": 1,
        "district_name": "Churachandpur",
        "description":
            "   Churachandpur district occupies the south-west part of Manipur state.  It is bounded by Jiribam SubDivision of Imphal East, Tamenglong District on the North, Bishnupur and Chandel District on the East Myanmar (Burma) and Mizoram state on the South and Cachar District of Assam on the West. The topography of the district is hilly. The district got its name “Churachandpur” from the Manipur king Churachand Singh. The District Headquarter, Churachandpur, which is the second largest town of the state, is situated at a distance of 64 kilometres from the State capital – Imphal.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "bishnupur/loktak_lake.jpg"},
          {"spotName": "spot2", "img_url": "bishnupur/loktak_lake.jpg"},
          {"spotName": "spot3", "img_url": "bishnupur/loktak_lake.jpg"}
        ]
      }
    },
    {
      "id": 4,
      "attributes": {
        "state_id": 1,
        "district_name": "Imphal East",
        "description":
            "Imphal East District came into being with effect from 18th June, 1996 by bifurcating the erstwhile Imphal district into two district namely Imphal East District and Imphal West District occupying the eastern part of Imphal district with its head quarters at Porompat .",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "east/sanamahi_5.jpg"},
          {"spotName": "spot2", "img_url": "east/war_cemetary_3.jpg"},
          {"spotName": "spot3", "img_url": "east/govindaji_1.jpg"}
        ]
      }
    },
    {
      "id": 5,
      "attributes": {
        "state_id": 1,
        "district_name": "Imphal West",
        "description":
            "The Imphal West District falls in the Category of Manipur valley region. It is a tiny plain at the centre of Manipur surrounded by Plains of other districts. Imphal City, the State Capital is the nodal functional centre of this District. ",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/Kangla.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/nupilal.JPG"}
        ]
      }
    },
    {
      "id": 6,
      "attributes": {
        "state_id": 1,
        "district_name": "Jiribam",
        "description":
            "   Jiribam district is a district situated at the western corner of Manipur. It is 220 kilometers far away from Imphal, the capital of Manipur. The geographical boundaries of Jiribam district are Tousem sub-division of Tamenglong district and Tipaimukh sub-division of Churchandpur district on the East, Cachar district of Assam and Barak River on the West, again Cachar district of Assam and Jiri River on the North and Tipaimukh sub-division of Churchanpur district and Barak River on the South.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 7,
      "attributes": {
        "state_id": 1,
        "district_name": "Kakching",
        "description":
            "The district of Kakching came into existence on the 8th December 2016 when the State Government announced the formation of 7 new districts through a notification of the Government of Manipur.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 8,
      "attributes": {
        "state_id": 1,
        "district_name": "Kamjong",
        "description":
            "   Kamjong District was created as a new district among seven new districts by bifurcating from the existing Ukhrul District. It is one of the 16 full fledged districts of the Indian state of Manipur. The district headquarters is located in kamjong village. Kamjong District is located in the north of the Manipur State and it is a hill district of the state with full of scenic beauty. District is home of colourful Tangkhul people and Tankhuls are the dominant tribe and other tribe like Kuki are also included in very low number. ",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 9,
      "attributes": {
        "state_id": 1,
        "district_name": "Kangpokpi (Sadar Hills)",
        "description":
            "   Kangpokpi District also known as Sadar Hills district, is one of the 16 districts in the Indian state of Manipur. It was created in December 2016 from areas in the Sadar Hills region which were previously part of Senapati District.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 10,
      "attributes": {
        "state_id": 1,
        "district_name": "Noney",
        "description":
            "   Noney district is a new district in Manipur, India, created by bifurcating erstwhile Tamenglong district. The district headquarters is located in Longmai. Majority of the residents are ethnic Rongmei Naga with a large Inpui Naga minority in Haochong subdivision.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 11,
      "attributes": {
        "state_id": 1,
        "district_name": "Pherzawl",
        "description":
            "   Pherzawl District is located in the southern part of the state of Manipur. It is bounded on the east by Churachandpur District; on the north by Tamenglong District, Noney District and Jiribam district; on the west by the Cachar District of Assam and on the South by Sinlung Hills, Mizoram. The Pherzawl District came into existence on 8 December 2016 by joining 55-AC Tipaimukh (ST) and 56-AC Thanlon (ST) with its headquarters at Pherzawl. Despite the controversy surrounding the creation of seven new revenue districts in Manipur, the people of Pherzawl District welcomed the decision with celebrations[1] on 16 December 2016, when Manipur Chief Minister O.Ibobi Singh inaugurated the administrative centre at Pherzawl village.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 12,
      "attributes": {
        "state_id": 1,
        "district_name": "Senapati",
        "description":
            "   The Senapati District is located in the northern part of Manipur. It is bounded on the east by Ukhrul District, on the west by Tamenglong District, on the north by Phek District of Nagaland and on the south by Imphal East District and Imphal West District. The Senapati District was earlier known as Manipur North District which came into existence w.e.f 14 November 1969 with its headquarters at Karong. The District is endowed with kaleidoscopic landscape of blue hills, green valleys, serpentine streams and rivers flowing through mountains and deep gorges. Rich varieties of flora and fauna adorn the land.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 13,
      "attributes": {
        "state_id": 1,
        "district_name": "Tamenglong",
        "description":
            "   Tamenglong District is bounded by Senapati District to the East, North Cashar Hills District of Assam to the West, Peren District Of Nagaland to the North and Churachanpur of Manipur to the South.The District had been known as Manipur West District before 1972. It is the farthest District from the state capital, Imphal and the District HQ. Tamenglong itself is also the farthest District HQ from Imphal being 147 Kms from the state Capital. Tamenglong is all hills, greenery and nature. Also known as the ‘Land of Hornbill’, the place is culturally rich and naturally pretty; it is home to people belonging to Zeliangrong community. ",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 14,
      "attributes": {
        "state_id": 1,
        "district_name": "Tengnoupal",
        "description":
            "   Tengnoupal district is a new district in Manipur, India created by splitting the Chandel district. It is one of the 16 full fledged districts of the Indian state of Manipur. The district headquarters has been relocated to Tengnoupal. The Sub-divisions : Moreh, Machi and Tengnoupal are under Tengnoupal District. ",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 15,
      "attributes": {
        "state_id": 1,
        "district_name": "Thoubal",
        "description":
            "   Thoubal district is one of the sixteen districts of Manipur state in northeastern India. This district is bounded by Senapati district on the north, Ukhrul and Chandel districts on the east, Churchandpur and Bishnupur districts on the south and Imphal West and Imphal East districts on the west. Thoubal town is the district headquarters. This district is known for Khongjom, where the last battle of the independence of Manipur was fought in April 1891 against the British army.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
        ]
      }
    },
    {
      "id": 16,
      "attributes": {
        "state_id": 1,
        "district_name": "Ukhrul",
        "description":
            "   Ukhrul District is located in the north of the Manipur State and it is a hill district of the state with full of scenic beauty. District is home of colourful Tangkhul people and Tangkhuls are the dominant tribe and other tribe like Kuki are also included in very low number. Ukhrul District  is bounded by Myanmar in the East, Kamjong District in the South, Kangpokpi and Senapati Districts in the West and Nagaland State in the North.",
        "createdAt": "2022-08-04T10:40:56.774Z",
        "updatedAt": "2022-08-04T10:40:56.774Z",
        "publishedAt": "2022-08-04T10:40:56.771Z",
        "spots": [
          {"spotName": "spot1", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot2", "img_url": "assets/west/shaheed-minar.jpg"},
          {"spotName": "spot3", "img_url": "assets/west/shaheed-minar.jpg"}
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
                    districName: listModels[i].attributes.districtName,
                    description: listModels[i].attributes.description,
                    imgUrl: listModels[i].attributes.spots
                    //imgUrl: listModels[i].attributes.spots.imgUrl
                    ));
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
