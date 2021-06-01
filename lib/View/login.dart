import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:testapp/Model/usersModel.dart';
import 'package:testapp/Services/loginServices.dart';
import 'package:testapp/View/home.dart';

import 'package:testapp/View/homePage.dart';
import 'package:testapp/View/progress.dart';

import 'package:testapp/Widgets/customWidgets.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isApiCall = false;
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  // final Logincontroller logincontroller = Get.put(Logincontroller());
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Future<User> userData;

  @override
  Widget build(BuildContext context) {
    return ProgressUi(
      child: _uiSetup(context),
      inAsyncCall: isApiCall,
      opacity: 0.3,
    );
  }

  Widget _uiSetup(BuildContext context) {
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
                      isApiCall = true;
                      APIServices apiServices = APIServices();
                      apiServices
                          .authenticate(
                              password: passwordController.text,
                              phone: userNameController.text)
                          .then((value) {
                        if (value != null) {
                          setState(() {
                            isApiCall = false;
                          });

                          if (value.status[0].toString() == "1") {
                            print(value.data.userProfile[0].empFirstname);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LandingPage(
                                        fname: value
                                            .data.userProfile[0].empFirstname,
                                        lname: value
                                            .data.userProfile[0].empLastname,
                                      )),
                            );
                          }
                          print(value.status[0].toString());
                          print('aaa');
                        }
                      });
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
