import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teng_go_app/core/theme.dart';
import 'package:teng_go_app/view/main.dart';
import 'package:teng_go_app/widgets/appbar_widget.dart';

class TripReportPage extends StatefulWidget {
  const TripReportPage({super.key});

  @override
  State<TripReportPage> createState() => _TripReportPageState();
}

class _TripReportPageState extends State<TripReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tripreportBar,
      body: Stack(
        children: [
          ListView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 25, top: 35),
                            child: Text(
                              "Realization",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            )),
                      ],
                    ),
                    SizedBox(
                        width: 375,
                        height: 100,
                        child: Card(
                          color: fromCssColor("#77CA91"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 5),
                                      child: Text(
                                        "Meals",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "RP 1.000.000,00",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
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
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "RP 1.000.000,00",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
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
                                        "Total",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "RP 2.000.000,00",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 25, top: 35),
                            child: Text(
                              "Detail transaction",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                            )),
                      ],
                    ),
                    SizedBox(
                        width: 375,
                        height: 100,
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
                                        left: 20, top: 10),
                                    child: Text(
                                      'Gasoline',
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
                                        "Rp 500.000",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Docdetail.pdf",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                        width: 375,
                        height: 100,
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
                                        left: 20, top: 10),
                                    child: Text(
                                      'Meals',
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
                                        "Rp 500.000",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Docdetail.pdf",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                        width: 375,
                        height: 100,
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
                                        left: 20, top: 10),
                                    child: Text(
                                      'Taxi',
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
                                        "Rp 500.000",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Text(
                                        "Docdetail.pdf",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                        width: 375,
                        height: 100,
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
                                        left: 20, top: 10),
                                    child: Text(
                                      'Decription',
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
                                        "Amount",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: Icon(Icons.attach_file_rounded,
                                        color: iconColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.white),
                                  side: MaterialStatePropertyAll(
                                      BorderSide(color: Colors.grey))),
                              onPressed: () {},
                              child: Text(
                                'Add',
                                style: GoogleFonts.poppins(
                                    color: iconColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              )
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
              )),
            ],
          ),
        ],
      ),
    );
  }
}
