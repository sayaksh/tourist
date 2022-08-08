import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DistrictDetailPage extends StatelessWidget {
  const DistrictDetailPage({
    Key? key,
    required this.districName,
    required this.description,
  }) : super(key: key);
  final String districName;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              context.router.pop(true);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            districName,
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                description,
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
            // Card(
            //   child:
            // )
          ],
        )

        //  Center(
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: Text(description),
        //   ),
        // ),
        );
  }
}
