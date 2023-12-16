import 'package:doctor_app/pages/chat_page.dart';
import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class Appoint2Page extends StatefulWidget {
  const Appoint2Page({Key? key}) : super(key: key);

  @override
  Appoint2PageState createState() => Appoint2PageState();
}

class Appoint2PageState extends State<Appoint2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add_task_outlined, size: 120),
            SizedBox(
              height: 50,
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Your Appointment has been booked, please check email for confirmation details !",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 0, 0, 0)),
              width: 400,
              height: 50,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 300,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      elevation: 0,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                      },
                      child: Text("Go to Appointment History",
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
          ],
        ),
      ),
    );
  }
}
