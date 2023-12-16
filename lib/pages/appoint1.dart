import 'package:doctor_app/data/json.dart';
import 'package:doctor_app/pages/appoint2.dart';
import 'package:doctor_app/pages/bookingpage.dart';
import 'package:doctor_app/pages/chat_page.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/avatar_image.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/chat_item.dart';
import 'package:doctor_app/widgets/popular_doctor.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';

class appoint1page extends StatefulWidget {
  const appoint1page({Key? key}) : super(key: key);

  @override
  appoint1pageState createState() => appoint1pageState();
}

class appoint1pageState extends State<appoint1page> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
            padding: EdgeInsets.only(right: 10),
          )),
      body: getbody(),
    );
  }

  getbody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Text(
              "Book An Appointment Online!\n",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          Container(
            child: Text(
              "We have the best specialists in your region , quality,proffesionism is our motto",
              style: TextStyle(
                  color: Color.fromARGB(255, 121, 121, 121), fontSize: 15),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Your Name",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 3, color: Colors.greenAccent), //<-- SEE HERE
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Email",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 3, color: Colors.greenAccent), //<-- SEE HERE
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "     +91",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: 270,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "  Enter Phone Number",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "City",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                width: 180,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Street No",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 150,
            child: TextField(
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: 'Write a brief description',
                labelStyle: TextStyle(fontSize: 20),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 3, color: Colors.greenAccent), //<-- SEE HERE
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Checkbox(
                value: this.value,
                onChanged: (value) {
                  setState(() {
                    this.value = value!;
                  });
                },
              ),
              Text(
                "By clicking submit , I agree to the updated privacy \npolicy and share my confidential details",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.blue),
            width: 400,
            height: 50,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 300,
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue,
                    elevation: 0,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Appoint2Page(),
                      ));
                    },
                    child: Text("Confirm Appointment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                  ),
                ),
                Icon(
                  Icons.send,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
