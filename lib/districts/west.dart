import 'package:flutter/material.dart';

class WestPage extends StatefulWidget {
  const WestPage({Key? key}) : super(key: key);

  @override
  State<WestPage> createState() => _WestPageState();
}

class _WestPageState extends State<WestPage> {
  List<Map<String, dynamic>> westImage = [
    {"id": 1, "name": "Kangla", "image": "assets/Kangla.jpg"},
    {"id": 2, "name": "Shaheed Minar", "image": "assets/shaheed-minar.jpg"},
    {
      "id": 3,
      "name": "Manipur State Museum",
      "image": "assets/state_museum.jpg"
    },
    {"id": 4, "name": "Ima Keithel", "image": "assets/ima_market.jpg"},
    {
      "id": 5,
      "name": "Nupi lal Memorial Complex",
      "image": "assets/nupilal.jpg"
    },

    // {"id": 6, "name": "Loukoi Pat", "image": "assets/loukoi_pat_1.jpg"},
    // {"id": 7, "name": "Loukoi Pat", "image": "assets/loukoi_pat_2.jpg"},
    // {"id": 8, "name": "INA Moirang", "image": "assets/floating_lake.jpg"},
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
          'Welcome to Imphal West Tourist Home',
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
                      'Imphal West District :',
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
                        '   The Imphal West District falls in the Category of Manipur valley region. It is a tiny plain at the centre of Manipur surrounded by Plains of other districts. Imphal City, the State Capital is the nodal functional centre of this District.\nIt is surrounded by Kangpokpi District on the north, on the east by Imphal East and Thoubal districts, on the south by Thoubal and Bishnupur Districts, and on the west by Senapati and Bishnupur Districts.',
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
                itemCount: westImage.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 200,
                        //height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(westImage[index]["image"]),
                                fit: BoxFit.cover)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 20),
                        child: Text(
                          westImage[index]["name"],
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )
                    ],
                  );
                }))
      ]),
    );
  }
}


//  GridView.builder(
          //     //physics: NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       crossAxisSpacing: 5,
          //     ),
          //     itemCount: imageList.length,
          //     itemBuilder: (context, index) {
          //       return InkWell(
          //         onTap: () {
          //           // Navigator.push(
          //           //     context,
          //           //     MaterialPageRoute(
          //           //         builder: (context) => const Geljang()));
          //         },
          //         child: Container(
          //           color: Colors.white,
          //           child: Column(
          //             children: [
          //               Container(
          //                 height: 150,
          //                 width: MediaQuery.of(context).size.width * 0.4,
          //                 decoration: BoxDecoration(
          //                     borderRadius: BorderRadius.circular(20),
          //                     image: DecorationImage(
          //                         image: AssetImage(imageList[index]["image"]),
          //                         fit: BoxFit.cover)),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.only(bottom: 7.5),
          //                 child: Text(
          //                   imageList[index]["name"],
          //                   style: TextStyle(
          //                       fontSize: 15,
          //                       color: Colors.black,
          //                       fontWeight: FontWeight.bold),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       );
          //     }),