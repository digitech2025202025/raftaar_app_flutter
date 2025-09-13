import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DriverPage extends StatefulWidget {
  @override State<DriverPage> createState() => _DriverPageState();
}
class _DriverPageState extends State<DriverPage> {
  final db = FirebaseDatabase.instance.ref();
  final uid = FirebaseAuth.instance.currentUser?.uid ?? 'driver_dummy';
  @override
  void initState() {
    super.initState();
    // Listen for new requested rides (simple demo)
    db.child('rides').orderByChild('status').equalTo('requested').onChildAdded.listen((ev) {
      final rideId = ev.snapshot.key!;
      // auto assign for demo (in real app show accept dialog)
      db.child('rides/$rideId/driverUid').set(uid);
      db.child('rides/$rideId/status').set('accepted');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Driver')), body: Center(child: Text('Driver auto-accepts requested rides (demo)')));
  }
}
