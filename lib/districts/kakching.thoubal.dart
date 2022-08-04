import 'package:flutter/material.dart';

class KakchingPage extends StatefulWidget {
  const KakchingPage({Key? key}) : super(key: key);

  @override
  State<KakchingPage> createState() => _KakchingPageState();
}

class _KakchingPageState extends State<KakchingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: const Center(child: Text('hello')),
    );
  }
}
