import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
