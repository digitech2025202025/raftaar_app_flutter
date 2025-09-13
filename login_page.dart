import 'package:flutter/material.dart';
import 'role_selection_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Raftaar Login")),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: "Enter phone (+91...)"),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // NOTE: OTP logic to be wired with Firebase on Codemagic testing or later.
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => RoleSelectionPage()));
              },
              child: Text("Continue (OTP placeholder)"),
            )
          ]),
        ),
      ),
    );
  }
}
