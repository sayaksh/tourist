import 'package:flutter/material.dart';

int? districtId;

class BishnupurPage extends StatefulWidget {
  final int? districtId;

  const BishnupurPage({this.districtId, Key? key}) : super(key: key);

  @override
  State<BishnupurPage> createState() => _BishnupurPageState();
}

class _BishnupurPageState extends State<BishnupurPage> {
  List<Map<String, dynamic>> imageList = [
    {"id": 1, "name": "Loktak Lake", "image": "assets/loktak_lake.jpg"},
    {"id": 2, "name": "Keibul Lamjao", "image": "assets/keibul_lamjao_2.jpg"},
    {"id": 3, "name": "Sadu Chiru", "image": "assets/sadu.jpg"},
    {"id": 4, "name": "Bishnu Temple", "image": "assets/bishnu.jpg"},
    {"id": 5, "name": "Sendra Tourist Home", "image": "assets/sendra.jpg"},
    {"id": 6, "name": "Loukoi Pat", "image": "assets/loukoi_pat_1.jpg"},
    {"id": 7, "name": "Loukoi Pat", "image": "assets/loukoi_pat_2.jpg"},
    {"id": 8, "name": "INA Moirang", "image": "assets/floating_lake.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        backgroundColor: Colors.lightGreen,
        shadowColor: Colors.purple,
        title: const Text(
          'Welcome to Bishnupur Tourist Home',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
            flex: 3,
            child: Center(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Bishnupur District:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    width: 300,
                    child: Text(
                        '   Bishnupur District with its headquarter at Bishnupur (27 Km. from Imphal) was opened on 25-05-1983. Stretching between 93.43 degree E and 93.53 degree E Longitudes and 24.18 degree N and 24.44 degree N Latitudes the total geographical area of the District is 530 Sq. Km. It is bounded on the North by Imphal West District, on the South by Churachandpur District, on the East  by Imphal and Thoubal Districts.',
                        style: TextStyle(fontSize: 17, color: Colors.black)),
                  ),
                  Divider(
                    height: 5,
                    thickness: 2,
                    indent: 15,
                    endIndent: 15,
                    color: Colors.lightGreen,
                  ),
                  Text(
                    'Recommended tourist places :',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            )),
        Expanded(
            flex: 2,
            child: ListView.builder(
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          // height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(imageList[index]["image"]),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Text(
                            imageList[index]["name"],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  );
                }))
      ]),
    );
  }
}


// GridView.builder(
             
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 5,
//               ),
//               itemCount: imageList.length,
//               itemBuilder: (context, index) {
//                 return InkWell(
//                   onTap: () {},
//                   child: Container(
//                     color: Colors.white,
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 150,
//                           width: MediaQuery.of(context).size.width * 0.4,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               image: DecorationImage(
//                                   image: AssetImage(imageList[index]["image"]),
//                                   fit: BoxFit.cover)),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 7.5),
//                           child: Text(
//                             imageList[index]["name"],
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }),