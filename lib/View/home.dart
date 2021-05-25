import 'package:flutter/material.dart';
import 'package:testapp/View/homePage.dart';
import 'package:testapp/View/login.dart';
import 'package:testapp/View/notification.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 200,
              ),
              RaisedButton(
                child: Text("Notification page"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationPage()),
                  );
                },
              ),
              RaisedButton(
                child: Text("Login page"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
              RaisedButton(
                child: Text("Calander Page"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
