import 'package:flutter/material.dart';

class Anotherpage extends StatelessWidget {
  final String payload;
  Anotherpage({required this.payload});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(payload)));
  }
}
