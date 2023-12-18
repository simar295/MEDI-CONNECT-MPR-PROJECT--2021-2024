import 'package:doctor_app/pages/loginpage.dart';
import 'package:doctor_app/pages/recordpage.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:url_launcher/url_launcher.dart';

class startupPage extends StatefulWidget {
  const startupPage({Key? key}) : super(key: key);

  @override
  _startupPageState createState() => _startupPageState();
}

class _startupPageState extends State<startupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.freepik.com/free-vector/medicine-concept-illustration_114360-2802.jpg?w=740&t=st=1702922466~exp=1702923066~hmac=2f31b4acd97c966acae3f906c04875a27a83a17147ce1678c5bdcf3f3b20621f")))),
          Text(
            "MediConnect",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Color.fromARGB(255, 23, 255, 143)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "A One Stop Appointments and Reports Management System",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: const Color.fromARGB(255, 0, 0, 0)),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => loginPage(),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                alignment: Alignment.center,
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "  Sign Up     ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      color: Colors.greenAccent,
                      size: 35,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
