import 'package:flutter/material.dart';
import 'package:gitnews2/views/homeview.dart';

void main() {
  runApp(const GitNews2());
}

class GitNews2 extends StatelessWidget {
  const GitNews2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homeview(),
    );
  }
}
