import 'package:doctor_app/pages/recordpage.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:url_launcher/url_launcher.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

_launchURLBrowser() async {
  var url = Uri.parse("https://www.geeksforgeeks.org/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget okButton = TextButton(
  child: Text("OK"),
  onPressed: () {},
);

AlertDialog alert = AlertDialog(
  actions: [okButton],
  title: Text("Report"),
  content: Text("App wants to open Digilocker "),
);

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );
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
            mainAxisAlignment: MainAxisAlignment.center,
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
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                            "https://st3.depositphotos.com/15648834/17930/v/450/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"),
                      ))),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Personal Information",
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
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Simarpreet Singh",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
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
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "simarabc@gmail.com",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "+91 9976240454",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor: MaterialStatePropertyAll(appBgColor)),
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => recordPage(),
                )),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "         Access Medical Records",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor: MaterialStatePropertyAll(appBgColor)),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
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
                    "    Access Insurance Certificates",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
