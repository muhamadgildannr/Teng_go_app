import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:teng_go_app/core/theme.dart';
import 'package:teng_go_app/view/main.dart';

class LeaveRequestPage extends StatefulWidget {
  const LeaveRequestPage({super.key});

  @override
  State<LeaveRequestPage> createState() => _LeaveRequestPageState();
}

class _LeaveRequestPageState extends State<LeaveRequestPage> {
  final _value = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon:
                  const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white)),
          title: const Text('Leave request'),
          backgroundColor: fromCssColor('#77CA91'),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Leave type',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          DropdownButtonFormField(
                            borderRadius: BorderRadius.circular(12),
                            icon: const Icon(Icons.arrow_drop_down_circle_outlined),
                            value: _value,
                            items: const [
                              DropdownMenuItem(
                                  value: "-1",
                                  child: Text("Annual Leave",
                                      style: TextStyle(color: Colors.black))),
                              DropdownMenuItem(
                                  value: "1",
                                  child: Text("Annual Leave",
                                      style: TextStyle(color: Colors.black))),
                              DropdownMenuItem(
                                  value: "2",
                                  child: Text("Annual Leave",
                                      style: TextStyle(color: Colors.black))),
                            ],
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15, right: 15),
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            'Request type',
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 30, top: 10),
                            child: RoundCheckBox(
                              onTap: (selected) {},
                              checkedColor: fromCssColor('#2E3192'),
                              borderColor: fromCssColor('#2E3192'),
                              checkedWidget: Icon(Icons.abc,
                                  size: 1, color: fromCssColor('#2E3192')),
                              size: 20,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              'Full Day',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 30, top: 10),
                            child: RoundCheckBox(
                              onTap: (selected) {},
                              checkedColor: fromCssColor('#2E3192'),
                              borderColor: fromCssColor('#2E3192'),
                              checkedWidget: Icon(Icons.abc,
                                  size: 1, color: fromCssColor('#2E3192')),
                              size: 20,
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              'Half Day',
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15, right: 15),
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            'Time of request',
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 10, left: 32),
                            child: Text(
                              "Start Date:",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 10, right: 32),
                            child: Text(
                              "1 Jan 2023",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 10, left: 32),
                            child: Text(
                              "End Date:",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 10, right: 32),
                            child: Text(
                              "3 Jan 2023",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            )),
                      ],
                    ),
                    Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 30,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15, right: 15),
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            'Leave reason',
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        width: 350,
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15, right: 15),
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            'Support Document',
                            style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 350,
                      height: 100,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 100,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.attach_file_rounded,
                                      color: Colors.grey)),
                              const Text(
                                'Attach File',
                                selectionColor: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 25,
                    // ),
                    // OutlinedButton(
                    //   style: OutlinedButton.styleFrom(
                    //     backgroundColor: fromCssColor('#77CA91'),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (_) => MyHomePage(),
                    //       ),
                    //     );
                    //   },
                    //   child: Padding(
                    //     padding: EdgeInsets.only(
                    //         top: 15, bottom: 15, left: 125, right: 125),
                    //     child: Text('Clock-In',
                    //         style: GoogleFonts.poppins(
                    //           color: Colors.white,
                    //         )),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
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
                    child: Text('Request',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16))),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
