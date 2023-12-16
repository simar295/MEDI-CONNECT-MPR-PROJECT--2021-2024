import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:url_launcher/url_launcher.dart';

class recordPage extends StatefulWidget {
  const recordPage({Key? key}) : super(key: key);

  @override
  _recordPageState createState() => _recordPageState();
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
  title: Text("Report"),
  content: Text("The Report Has Been Downloaded"),
);

class _recordPageState extends State<recordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.black,
        ),
        centerTitle: true,
        title: Container(
            alignment: Alignment.center,
            child: Text(
              "LAB REPORTS",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
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
    return Center(
        child: GridView.extent(
      primary: false,
      padding: const EdgeInsets.all(16),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      maxCrossAxisExtent: 200.0,
      children: <Widget>[
        InkWell(
          onTap: () {
            showModalBottomSheet(
              isDismissible: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: ListTile(
                        leading: new Icon(
                          Icons.bloodtype,
                          color: Colors.red,
                          size: 45,
                        ),
                        title: new Text('OPD Report',
                            style: TextStyle(fontSize: 30)),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Symptons : 2 detected"),
                              Text("Diagnosis : required"),
                              Text("Rx Test : recommended"),
                              Text("Next Appointment : 13th Oct 2023"),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  },
                                  child: Text("download report"))
                            ]),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('OPD REPORTS', style: TextStyle(fontSize: 20)),
            color: Colors.yellow,
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              isDismissible: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: ListTile(
                        leading: new Icon(
                          Icons.bloodtype,
                          color: Colors.red,
                          size: 45,
                        ),
                        title: new Text('CT Scan Report',
                            style: TextStyle(fontSize: 30)),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Symptons : 0 detected"),
                              Text("Diagnosis : Not required"),
                              Text("Rx Test : Not recommended"),
                              Text("Next Appointment : 25th NOV 2023"),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  },
                                  child: Text("download report"))
                            ]),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('CT SCANS', style: TextStyle(fontSize: 20)),
            color: Color.fromARGB(255, 255, 69, 22),
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              isDismissible: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: ListTile(
                        leading: new Icon(
                          Icons.bloodtype,
                          color: Colors.red,
                          size: 45,
                        ),
                        title: new Text('Vaccination summary',
                            style: TextStyle(fontSize: 25)),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Dose 1 : completed"),
                              Text("Dose 2 : completed"),
                              Text("Booster Dose : recommended"),
                              Text("Next Appointment : 6th sep 2023"),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  },
                                  child: Text("download report"))
                            ]),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('COVID CERTIFICATES',
                style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              isDismissible: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: ListTile(
                        leading: new Icon(
                          Icons.bloodtype,
                          color: Colors.red,
                          size: 45,
                        ),
                        title: new Text('Blood test reports',
                            style: TextStyle(fontSize: 30)),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Blood suger level : 3.4 mm"),
                              Text("Ascitic fluid : 5.9"),
                              Text("TT Test : recommended"),
                              Text("Next Appointment : 7th Nov 2023"),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  },
                                  child: Text("download report"))
                            ]),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('Blood Tests', style: TextStyle(fontSize: 20)),
            color: Color.fromARGB(255, 66, 250, 41),
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              isDismissible: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: ListTile(
                        leading: new Icon(
                          Icons.bloodtype,
                          color: Colors.red,
                          size: 45,
                        ),
                        title: new Text('Daily checkup results',
                            style: TextStyle(fontSize: 30)),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Symptons : 2 detected"),
                              Text("Diagnosis : required"),
                              Text("Rx Test : recommended"),
                              Text("Next Appointment : 8th Dec 2023"),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  },
                                  child: Text("download report"))
                            ]),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('DAILY CHECKUP RECORDS',
                style: TextStyle(fontSize: 20)),
            color: Color.fromARGB(255, 197, 94, 245),
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              isDismissible: true,
              useSafeArea: true,
              context: context,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: ListTile(
                        leading: new Icon(
                          Icons.bloodtype,
                          color: Colors.red,
                          size: 45,
                        ),
                        title: new Text('ECG Report',
                            style: TextStyle(fontSize: 30)),
                        subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Symptons : 2 detected"),
                              Text("Diagnosis : required"),
                              Text("Rx Test : recommended"),
                              Text("Next Appointment : 13th Oct 2023"),
                              ElevatedButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  },
                                  child: Text("download report"))
                            ]),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: const Text('ECG REPORTS', style: TextStyle(fontSize: 20)),
            color: Color.fromARGB(255, 18, 234, 250),
          ),
        ),
      ],
    ));
  }
}
