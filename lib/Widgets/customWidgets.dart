import 'package:flutter/material.dart';
import 'package:testapp/Model/calenderModel.dart';

TextField customTextField({
  TextEditingController controller,
  TextInputType inputType,
  String hintText,
}) {
  return TextField(
    controller: controller,
    keyboardType: inputType,
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10))),
    ),
  );
}

Container buildContainer({Datas data}) {
  return Container(
    height: 85,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: Colors.grey.withOpacity(0.9),
            offset: Offset(0, 7),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12))),
    padding: EdgeInsets.all(8),
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Text(
                "${data.id}",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
              Text(
                "Sat",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              )
            ],
          ),
        ),
        SizedBox(
          width: 6,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: VerticalDivider(
            color: Colors.grey[300],
            thickness: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${data.title}",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "${data.date}",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
