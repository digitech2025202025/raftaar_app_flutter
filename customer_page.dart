import 'package:flutter/material.dart';

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Customer")),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ElevatedButton(
            child: Text("Book ₹4000 / 100km / 8hrs"),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Fixed package booked (demo)")));
            },
          ),
          SizedBox(height:12),
          ElevatedButton(
            child: Text("Request Personal Driver"),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Personal driver requested (demo)")));
            },
          )
        ]),
      ),
    );
  }
}
