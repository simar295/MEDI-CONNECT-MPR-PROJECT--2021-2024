import 'package:badges/badges.dart';
import 'package:doctor_app/data/json.dart';
import 'package:doctor_app/pages/bookingpage.dart';
import 'package:doctor_app/pages/doctor_page.dart';
import 'package:doctor_app/pages/doctor_profile_page.dart';
import 'package:doctor_app/theme/colors.dart';
import 'package:doctor_app/widgets/category_box.dart';
import 'package:doctor_app/widgets/popular_doctor.dart';
import 'package:doctor_app/widgets/textbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:badges/src/badge.dart' as badge;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: badge.Badge(
              position: BadgePosition.topEnd(top: 7, end: -4),
              badgeContent: Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => bookingpage(),
                  ));
                },
                icon: Icon(
                  Icons.notifications_sharp,
                  color: primary,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            child: badge.Badge(
              position: BadgePosition.topEnd(top: 7, end: -4),
              badgeContent: Text(
                '1',
                style: TextStyle(color: Colors.white),
              ),
              child: Icon(
                Icons.account_circle,
                color: primary,
              ),
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            child: Text(
              "Welcome Simar",
              style: TextStyle(
                  fontSize: 18, color: primary, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              child: Text(
            "Let's Find Your Doctor",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 15,
          ),
          CustomTextBox(),
          SizedBox(
            height: 5,
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DoctorPage(),
              ));
            },
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 5),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryBox(
                    title: "Heart",
                    icon: Icons.favorite,
                    color: Colors.red,
                  ),
                  CategoryBox(
                    title: "Medical",
                    icon: Icons.local_hospital,
                    color: Colors.blue,
                  ),
                  CategoryBox(
                    title: "Dental",
                    icon: Icons.details_rounded,
                    color: Colors.purple,
                  ),
                  CategoryBox(
                    title: "Healing",
                    icon: Icons.healing_outlined,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
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
                      "https://mobisoftinfotech.com/resources/wp-content/uploads/2018/11/healthcare-mobile-appdevelopment-guide-banner-image.png"),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Text(
            "Popular Doctors",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DoctorProfilePage(),
              ));
            },
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 5),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularDoctor(
                    doctor: doctors[0],
                  ),
                  PopularDoctor(
                    doctor: doctors[1],
                  ),
                  PopularDoctor(
                    doctor: doctors[2],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Text(
            "Nearby Hospitals",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          )),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 5),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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
                              padding: const EdgeInsets.all(5),
                              child: ListTile(
                                leading: new Icon(
                                  Icons.hotel_sharp,
                                  color: Colors.red,
                                  size: 45,
                                ),
                                title: new Text('Super Speciality, Janakpuri',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: double.infinity,
                                        padding: EdgeInsets.all(20),
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/08/27/723150-janakpuri-super-speciality-hospital.jpg?im=Resize=(600,450)"),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Text(
                                        "OPEN 24/7",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "FACILITIES : ⭐⭐⭐⭐⭐",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DIAGNOSIS : AVAILABLE",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DISTANCE : 6 km",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
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
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/08/27/723150-janakpuri-super-speciality-hospital.jpg?im=Resize=(600,450)")),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Super Speciality ,      Janakpuri",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                    margin: EdgeInsets.all(5),
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
                              padding: const EdgeInsets.all(5),
                              child: ListTile(
                                leading: new Icon(
                                  Icons.hotel_sharp,
                                  color: Colors.red,
                                  size: 45,
                                ),
                                title: new Text('Mata Chanan Devi , Janakpuri',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: double.infinity,
                                        padding: EdgeInsets.all(20),
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://www.mcdh.in/uploads/slider_images/banner.jpg"),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Text(
                                        "OPEN 24/7",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "FACILITIES : ⭐⭐⭐⭐⭐",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DIAGNOSIS : AVAILABLE",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DISTANCE : 24 km",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
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
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://www.mcdh.in/uploads/slider_images/banner.jpg")),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Mata Chanan Devi , Janakpuri",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                    margin: EdgeInsets.all(5),
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
                              padding: const EdgeInsets.all(5),
                              child: ListTile(
                                leading: new Icon(
                                  Icons.hotel_sharp,
                                  color: Colors.red,
                                  size: 45,
                                ),
                                title: new Text('GB PANT, Janakpuri',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: double.infinity,
                                        padding: EdgeInsets.all(20),
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://images.hindustantimes.com/rf/image_size_630x354/HT/p2/2017/12/15/Pictures/hospital_fa13fea2-e194-11e7-8c02-0f57a5c79e45.jpg"),
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      Text(
                                        "OPEN 24/7",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "FACILITIES : ⭐⭐⭐⭐",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DIAGNOSIS : AVAILABLE",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "DISTANCE : 7 km",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
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
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://images.hindustantimes.com/rf/image_size_630x354/HT/p2/2017/12/15/Pictures/hospital_fa13fea2-e194-11e7-8c02-0f57a5c79e45.jpg")),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          " GB PANT, Janakpuri",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                    margin: EdgeInsets.all(5),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
