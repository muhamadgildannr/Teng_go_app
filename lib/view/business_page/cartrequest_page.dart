import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teng_go_app/core/theme.dart';
import 'package:teng_go_app/view/main.dart';
import 'package:teng_go_app/widgets/appbar_widget.dart';

class CartRequestPage extends StatefulWidget {
  const CartRequestPage({super.key});

  @override
  State<CartRequestPage> createState() => _CartRequestPageState();
}

class _CartRequestPageState extends State<CartRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: tripreportBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 25, top: 35),
                            child: Text(
                              "Transportation info",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            )),
                      ],
                    ),
                    SizedBox(
                        width: 375,
                        height: 325,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 25, top: 25),
                                    child: Icon(Icons.calendar_today_outlined,
                                        color: iconColor, size: 30),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 25),
                                    child: Text(
                                      'Enter date',
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              divider4,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 25),
                                    child: Icon(Icons.search_outlined,
                                        color: Colors.grey, size: 30),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      'Enter destination',
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              divider4,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Cart Brand",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Toyota",
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
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Cart Model",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Avanza",
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
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Driver",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Pak Jatmiko",
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
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Phone",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "0811223344",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Trip reason",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      )),
                                ],
                              ),
                              Container(
                                width: 380,
                                height: 50,
                                // margin: EdgeInsets.only(bottom: 30),
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    // elevation: 10,
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, top: 5),
                                                child: Text(
                                                  "Visit Store Bintaro",
                                                  style: GoogleFonts.poppins(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16),
                                                )),
                                          ],
                                        ))
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const MyHomePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: backgroundColorgreen,
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: Text('Submit',
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 16))),
                  ),
                ))
              ],
            )
          ],
        ));
  }
}
