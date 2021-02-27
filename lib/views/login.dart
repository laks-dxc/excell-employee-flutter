import 'package:excell_employee/views/checkOTP.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController mobileNoController =
      new TextEditingController(text: '8309038636');
  @override
  Widget build(BuildContext context) {
    mobileNoController = new TextEditingController(text: '8309038636');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: mobileNoController,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CheckOTP()),
                  );
                },
                child: Text(
                  "Get OTP",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
