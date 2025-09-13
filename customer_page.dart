import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class CustomerPage extends StatelessWidget {
  final db = FirebaseDatabase.instance.ref();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Customer")),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ElevatedButton(
            child: Text("Book ₹4000 / 100km / 8hrs"),
            onPressed: () async {
              final rideId = db.child('rides').push().key!;
              await db.child('rides/$rideId').set({
                "status":"requested",
                "type":"fixed",
                "fixedPackage":{"price":4000,"km":100,"hours":8},
                "timestamp": ServerValue.timestamp
              });
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Fixed package requested")));
            },
          ),
          SizedBox(height:12),
          ElevatedButton(
            child: Text("Request Personal Driver"),
            onPressed: () async {
              final reqId = db.child('personal_driver_requests').push().key!;
              await db.child('personal_driver_requests/$reqId').set({
                "status":"open","note":"Customer needs driver","timestamp": ServerValue.timestamp
              });
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Personal driver requested")));
            },
          )
        ]),
      ),
    );
  }
}
