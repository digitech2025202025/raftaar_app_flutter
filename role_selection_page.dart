import 'package:flutter/material.dart';
import 'customer_page.dart';
import 'driver_page.dart';
import 'admin_page.dart';

class RoleSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose Role')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ElevatedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => CustomerPage())), child: Text('Customer')),
          ElevatedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => DriverPage())), child: Text('Driver')),
          ElevatedButton(onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (_) => AdminPage())), child: Text('Admin')),
        ]),
      ),
    );
  }
}
