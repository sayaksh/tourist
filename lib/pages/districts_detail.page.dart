import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class DistrictDetailPage extends StatelessWidget {
  const DistrictDetailPage({Key? key, required this.districName})
      : super(key: key);
  final String districName;

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
          style: const TextStyle(fontSize: 17, color: Colors.white),
        ),
        // centerTitle: true,
        backgroundColor: Colors.lightGreen,
        shadowColor: Colors.purple,
      ),
    );
  }
}
