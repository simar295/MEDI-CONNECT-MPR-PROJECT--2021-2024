import 'dart:io';

import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/recordpage.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications_sharp,
              color: primary,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.account_circle,
              color: primary,
            ),
          ),
        ],
      ),
      body: getBody(),
    );
  }

  getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  radius: (52),
                  backgroundColor: Color.fromARGB(255, 192, 251, 255),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                        "https://st3.depositphotos.com/15648834/17930/v/450/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Enter Sign Up Information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 188, 239, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Enter name"),
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 188, 239, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Add email"),
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 188, 239, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Add a phone number"),
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Add aadhar id",
                    hintStyle: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Provide ABHA id",
                    hintStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Enter Personal Information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 188, 239, 255),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Age",
                      ),
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  Container(
                    width: 100,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 188, 239, 255),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Weight"),
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  Container(
                    width: 100,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 188, 239, 255),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Height"),
                      style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 188, 239, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Enter Occupation"),
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 188, 239, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration:
                      InputDecoration(hintText: "4 week travel history"),
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 188, 239, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration:
                      InputDecoration(hintText: "Family Members in House"),
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 188, 239, 255),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: "Past Medical History"),
                  style: TextStyle(
                      fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(appBgColor)),
                    onPressed: () {
                      myAlert();
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 82, 143, 255),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "           Upload Latest CT scan ",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //if image not null show the image
                  //if image null show text
                  image != null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              //to show image, you type like this.
                              File(image!.path),
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                            ),
                          ),
                        )
                      : Text(
                          "No Image",
                          style: TextStyle(fontSize: 20),
                        )
                ],
              ),

              /*  Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                  color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                )),
                height: 200,
                width: double.infinity,
                alignment: Alignment.center,
                child: 
              ), */
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(appBgColor)),
                    onPressed: () {
                      myAlert();
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 82, 143, 255),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "         Upload Medical Reports",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //if image not null show the image
                  //if image null show text
                  image != null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              //to show image, you type like this.
                              File(image!.path),
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                            ),
                          ),
                        )
                      : Text(
                          "No Image",
                          style: TextStyle(fontSize: 20),
                        )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(appBgColor)),
                    onPressed: () {
                      myAlert();
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 82, 143, 255),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "         Upload Latest Blood Tests",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //if image not null show the image
                  //if image null show text
                  image != null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              //to show image, you type like this.
                              File(image!.path),
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                            ),
                          ),
                        )
                      : Text(
                          "No Image",
                          style: TextStyle(fontSize: 20),
                        )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStatePropertyAll(0),
                        backgroundColor: MaterialStatePropertyAll(appBgColor)),
                    onPressed: () {
                      myAlert();
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 82, 143, 255),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "         Upload Other Documents",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //if image not null show the image
                  //if image null show text
                  image != null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              //to show image, you type like this.
                              File(image!.path),
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                            ),
                          ),
                        )
                      : Text(
                          "No Image",
                          style: TextStyle(fontSize: 20),
                        )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor: MaterialStatePropertyAll(appBgColor)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "                       Finish Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        Icons.check_box,
                        color: Colors.greenAccent,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ]),
      ),
    );
  }
}
