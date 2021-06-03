import 'package:flutter/material.dart';
import 'package:testapp/Model/calenderModel.dart';
import 'package:testapp/Services/CalanderServices.dart';

import 'package:testapp/Widgets/customWidgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  Future<Calender> calanderData;
  @override
  void initState() {
    calanderData = fetchCalander();
    print("called");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Holiday Calender")),
      ),
      body: FutureBuilder<Calender>(
          future: calanderData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // print("${snapshot.data.data1.length} checking");
              return ListView.builder(
                itemCount: snapshot.data.data1.length,
                itemBuilder: (context, index) {
                  return buildContainer(data: snapshot.data.data1[index]);
                },
              );
            } else if (snapshot.hasError) {
              return Text('error');
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("here is the function");
        },
      ),
    );
  }
}
