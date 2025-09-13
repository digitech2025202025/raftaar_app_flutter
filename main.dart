import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(RaftaarApp());
}

class RaftaarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raftaar',
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginPage(),
    );
  }
}
