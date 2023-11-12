import 'dart:io';

import 'package:teng_go_app/core/theme.dart';
import 'package:teng_go_app/view/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';
import 'package:teng_go_app/widgets/appbar_widget.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  File? _images;
  XFile? image;

  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text('Please choose media to select'),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(backgroundColorgreen)),
                    onPressed: () async {
                      Navigator.pop(context);
                      final picker = ImagePicker();
                      final pickedFile =
                          await picker.pickImage(source: ImageSource.gallery);
                      if (pickedFile != null) {
                        setState(() {
                          _images = File(pickedFile.path);
                        });
                      }
                    },
                    child: const Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.image),
                        ),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(backgroundColorgreen)),
                    //if user click this button. user can upload image from camera
                    onPressed: () async {
                      Navigator.pop(context);
                      final picker = ImagePicker();
                      final pickedFile =
                          await picker.pickImage(source: ImageSource.camera);
                      if (pickedFile != null) {
                        setState(() {
                          _images = File(pickedFile.path);
                        });
                      }
                    },
                    child: const Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.camera),
                        ),
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
        appBar: attendanceBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    _images != null
                        ? Container(
                            width: 370,
                            height: 270,
                            margin: const EdgeInsets.only(bottom: 30),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.file(
                                _images!,
                                fit: BoxFit
                                    .cover, // Ensure the image fits within the container
                              ),
                            ),
                          )
                        : Container(
                            width: 380,
                            height: 60,
                            margin: const EdgeInsets.only(bottom: 30),
                            // padding: EdgeInsets.only(left: 10, right: 10),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                // elevation: 10,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                        child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(
                                              right: 167),
                                            child: Text(
                                              "Take a selfie",
                                              style: GoogleFonts.poppins(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            )),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.photo_camera_rounded,
                                            color: Colors.grey,
                                          ),
                                          onPressed: () {
                                            myAlert();
                                          },
                                        ),
                                      ],
                                    ))
                                  ],
                                )),
                          ),
                    Container(
                      width: 380,
                      height: 115,
                      margin: const EdgeInsets.only(bottom: 10),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        "Jonathan Nunez",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "IT Manager",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Head Office",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 380,
                      height: 175,
                      margin: const EdgeInsets.only(bottom: 150),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Date:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "02 Feb 2023",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-In:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-Out:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.green,
                                            size: 40,
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "------------",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          )),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: buttonGrey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const Attendance1(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, left: 137, right: 137),
                      child: Text('Clock-In',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

class Attendance1 extends StatefulWidget {
  const Attendance1({super.key});

  @override
  State<Attendance1> createState() => _Attendance1State();
}

class _Attendance1State extends State<Attendance1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: attendanceBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 370,
                      height: 270,
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          // _images!,
                          'assets/images/img.png',
                          fit: BoxFit
                              .cover, // Ensure the image fits within the container
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      height: 115,
                      margin: const EdgeInsets.only(bottom: 10),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        "Jonathan Nunez",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "IT Manager",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Head Office",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 380,
                      height: 175,
                      margin: const EdgeInsets.only(bottom: 35),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Date:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "02 Feb 2023",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-In:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-Out:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.green,
                                            size: 40,
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "------------",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          )),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: buttonGrey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Attendance2(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 137, right: 137),
                        child: Text('Clock-In',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

class Attendance2 extends StatefulWidget {
  const Attendance2({super.key});

  @override
  State<Attendance2> createState() => _Attendance2State();
}

class _Attendance2State extends State<Attendance2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: attendanceBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 370,
                      height: 270,
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          // _images!,
                          'assets/images/img.png',
                          fit: BoxFit
                              .cover, // Ensure the image fits within the container
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      height: 115,
                      margin: const EdgeInsets.only(bottom: 10),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        "Jonathan Nunez",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "IT Manager",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Head Office",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 380,
                      height: 175,
                      margin: const EdgeInsets.only(bottom: 35),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Date:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "02 Feb 2023",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-In:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-Out:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.green,
                                            size: 40,
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "Head Office",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          )),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: backgroundColorgreen,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Attendance3(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 137, right: 137),
                        child: Text('Clock-In',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

class Attendance3 extends StatefulWidget {
  const Attendance3({super.key});

  @override
  State<Attendance3> createState() => _Attendance3State();
}

class _Attendance3State extends State<Attendance3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: attendanceBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 370,
                      height: 270,
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          // _images!,
                          'assets/images/img.png',
                          fit: BoxFit
                              .cover, // Ensure the image fits within the container
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      height: 115,
                      margin: const EdgeInsets.only(bottom: 10),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        "Jonathan Nunez",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "IT Manager",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Head Office",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 380,
                      height: 175,
                      margin: const EdgeInsets.only(bottom: 35),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Date:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "02 Feb 2023",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-In:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "08.00",
                                            style: GoogleFonts.poppins(
                                                color: textColorsGreen,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-Out:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.green,
                                            size: 40,
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "Head Office",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          )),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        // backgroundColor: Colors.white,
                        // shadowColor: backgroundColorgreen,
                        side: MaterialStatePropertyAll(
                            BorderSide(color: backgroundColorgreen)),
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                      ),
                      // style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Attendance4(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 137, right: 137),
                        child: Text('Clock-In',
                            style: GoogleFonts.poppins(
                              color: backgroundColorgreen,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

class Attendance4 extends StatefulWidget {
  const Attendance4({super.key});

  @override
  State<Attendance4> createState() => _Attendance4State();
}

class _Attendance4State extends State<Attendance4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: attendanceBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: 370,
                      height: 270,
                      margin: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          // _images!,
                          'assets/images/img.png',
                          fit: BoxFit
                              .cover, // Ensure the image fits within the container
                        ),
                      ),
                    ),
                    Container(
                      width: 380,
                      height: 115,
                      margin: const EdgeInsets.only(bottom: 10),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        "Jonathan Nunez",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "IT Manager",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Head Office",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 380,
                      height: 175,
                      margin: const EdgeInsets.only(bottom: 35),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Date:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "02 Feb 2023",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-In:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "08.00",
                                            style: GoogleFonts.poppins(
                                                color: textColorsGreen,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-Out:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "17:00",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.green,
                                            size: 40,
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "Head Office",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          )),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: buttonGrey,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Attendance5(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 15, left: 137, right: 137),
                        child: Text('Clock-In',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

class Attendance5 extends StatefulWidget {
  const Attendance5({super.key});

  @override
  State<Attendance5> createState() => _Attendance5State();
}

class _Attendance5State extends State<Attendance5> {
  final LocalAuthentication auth = LocalAuthentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: attendanceBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    // Container(
                    //   width: 300,
                    //   height: 270,
                    //   margin: EdgeInsets.only(bottom: 30),
                    //   decoration: BoxDecoration(
                    //     color: Colors.white.withOpacity(0.5),
                    //     borderRadius: BorderRadius.circular(15.0),
                    //   ),
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(15.0),
                    //     child: Image.asset(
                    //       // _images!,
                    //       'assets/images/img.png',
                    //       fit: BoxFit
                    //           .cover, // Ensure the image fits within the container
                    //     ),
                    //   ),
                    // ),
                    Container(
                      width: 380,
                      height: 115,
                      margin: const EdgeInsets.only(bottom: 10),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 10),
                                      child: Text(
                                        "Jonathan Nunez",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "IT Manager",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Head Office",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 380,
                      height: 175,
                      margin: const EdgeInsets.only(bottom: 35),
                      // padding: EdgeInsets.only(left: 25, right: 25),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          // elevation: 10,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Date:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "02 Feb 2023",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-In:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Text(
                                            "Clock-Out:",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "--:--",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, left: 20),
                                          child: Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.green,
                                            size: 40,
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10, right: 20),
                                          child: Text(
                                            "------------",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          )),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.fingerprint_outlined,
                              color: backgroundColorgreen,
                            ),
                            iconSize: 100,
                            onPressed: () async {
                              final bool canAuthenticateWithBiometrics =
                                  await auth.canCheckBiometrics;
                              final bool canAuthenticate =
                                  canAuthenticateWithBiometrics ||
                                      await auth.isDeviceSupported();

                              // ignore: avoid_print
                              print({'Cek Support': canAuthenticate});

                              final List<BiometricType> availableBiometrics =
                                  await auth.getAvailableBiometrics();

                              print({'Cek available': availableBiometrics});

                              if (canAuthenticate) {
                                try {
                                  final bool didAuthenticate = await auth
                                      .authenticate(
                                          options: const AuthenticationOptions(
                                              biometricOnly: true),
                                          localizedReason:
                                              'Masukan sidik jari untuk tetap login',
                                          authMessages: [
                                        const AndroidAuthMessages(
                                          cancelButton: 'Batalkan',
                                        )
                                      ]);
                                  print({
                                    'Cek apakah finger benar': didAuthenticate
                                  });
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const MyHomePage(),
                                      ),
                                      (route) => false);
                                } on PlatformException catch (error) {
                                  print(error);
                                }
                              }
                            },
                          ),
                        ),
                        Center(
                          child: TextButton(
                            child: Text(
                              'Clock-In with your finger',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: buttonGrey,
                              ),
                            ),
                            onPressed: () async {
                              final bool canAuthenticateWithBiometrics =
                                  await auth.canCheckBiometrics;
                              final bool canAuthenticate =
                                  canAuthenticateWithBiometrics ||
                                      await auth.isDeviceSupported();

                              // ignore: avoid_print
                              print({'Cek Support': canAuthenticate});

                              final List<BiometricType> availableBiometrics =
                                  await auth.getAvailableBiometrics();

                              print({'Cek available': availableBiometrics});

                              if (canAuthenticate) {
                                try {
                                  final bool didAuthenticate = await auth
                                      .authenticate(
                                          options: const AuthenticationOptions(
                                              biometricOnly: true),
                                          localizedReason:
                                              'Masukan sidik jari untuk tetap Clock-In',
                                          authMessages: [
                                        const AndroidAuthMessages(
                                          cancelButton: 'Batalkan',
                                        )
                                      ]);
                                  print({
                                    'Cek apakah finger benar': didAuthenticate
                                  });
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const MyHomePage(),
                                      ),
                                      (route) => false);
                                } on PlatformException catch (error) {
                                  print(error);
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
