import 'package:doctor_app/data/json.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/avatar_image.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/chat_item.dart';
import 'package:doctor_app/widgets/popular_doctor.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';

class bookingpage extends StatefulWidget {
  const bookingpage({Key? key}) : super(key: key);

  @override
  bookingpageState createState() => bookingpageState();
}

class bookingpageState extends State<bookingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
              "AI' Suggestions",
              style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.velvetech.com/wp-content/uploads/2019/02/artificial-intelligence-healthcare-tw.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              alignment: Alignment.center,
              child: Text(
                "SEASONAL DISEASE FORCAST",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://www.tylenol.com/sites/tylenol_us/files/cold_vs_flu_banner.png"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://chennainaturaltreatmentclinic.com/wp-content/uploads/2019/05/skin-problems.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://as1.ftcdn.net/v2/jpg/05/17/40/70/1000_F_517407005_rmMk4LaryKeBECv7iCyhE8ebhBsLC2dD.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://mmi.edu.pk/wp-content/uploads/2022/05/banner-SoreThroat.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
        ]),
      ),
    );
  }
}
