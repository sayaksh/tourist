import 'package:flutter/material.dart';

class KakchingPage extends StatefulWidget {
  const KakchingPage({Key? key}) : super(key: key);

  @override
  State<KakchingPage> createState() => _KakchingPageState();
}

class _KakchingPageState extends State<KakchingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to Kakching District',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        backgroundColor: Colors.lightGreen,
        shadowColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        const Text(
          'Kakching district :',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 200,
          width: 180,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(''),
          ),
        ),
        const Divider(
          height: 3,
          thickness: 2,
          indent: 15,
          endIndent: 15,
          color: Colors.lightGreen,
        ),
        Card(
          elevation: 8,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('keibul_lamjao_4'), fit: BoxFit.cover)),
          ),
        ),
        const Divider(
          height: 3,
          thickness: 2,
          indent: 15,
          endIndent: 15,
          color: Colors.lightGreen,
        ),
        Text(
          'Thoubal district',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ]),
    );
  }
}
