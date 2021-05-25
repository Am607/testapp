import 'package:flutter/material.dart';
import 'package:testapp/Model/usersModel.dart';
import 'package:testapp/Services/loginServices.dart';

import 'package:testapp/Widgets/customWidgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  // final Logincontroller logincontroller = Get.put(Logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                "Sample App",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: customTextField(
                  controller: userNameController,
                  hintText: "Enter your username",
                  inputType: TextInputType.text),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: customTextField(
                  controller: passwordController,
                  hintText: "Enter your password",
                  inputType: TextInputType.visiblePassword),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                "Forgot Password",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
            Container(
                height: 70,
                padding: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    setState(() {
                      authenticate(
                          password: passwordController.text,
                          phone: userNameController.text);

                      // if RemoteServices.isLoading) {
                      //  print("asd");
                      // } else {
                      //   print("a");
                      // }
                    });
                  },
                  child: Text("Login"),
                  color: Colors.blue,
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Are you an admin ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'login',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
