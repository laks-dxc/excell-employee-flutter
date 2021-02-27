import 'package:excell_employee/views/dashboard.dart';
import 'package:flutter/material.dart';

class CheckOTP extends StatefulWidget {
  @override
  _CheckOTPState createState() => _CheckOTPState();
}

class _CheckOTPState extends State<CheckOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: new TextEditingController(text: '1111'),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile No.',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: Text(
                  "Confirm & Login",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
