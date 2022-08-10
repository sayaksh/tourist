import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tourist/model/district.model.dart';

class DistrictDetailPage extends StatefulWidget {
  const DistrictDetailPage({
    Key? key,
    required this.districName,
    required this.description,
    required this.imgUrl,
  }) : super(key: key);
  final String districName;
  final String description;
  final List<Spot> imgUrl;

  @override
  State<DistrictDetailPage> createState() => _DistrictDetailPageState();
}

class _DistrictDetailPageState extends State<DistrictDetailPage> {
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.districName,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          // centerTitle: true,
          backgroundColor: Colors.lightGreen,
          shadowColor: Colors.purple,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.description,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Recommended tourist spots :",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
              itemCount: widget.imgUrl.length,
              shrinkWrap: true,
              itemBuilder: ((context, index) {
                log(widget.imgUrl[index].imgUrl);
                return Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(widget.imgUrl[index].imgUrl),
                        fit: BoxFit.cover,
                      )),
                    )
                  ],
                );
              })

              // Card(
              //   child:

              )

          //  Center(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Text(description),
          //   ),
          // ),
        ]));
  }
}
