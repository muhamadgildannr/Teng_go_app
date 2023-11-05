import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teng_go_app/core/theme.dart';
import 'package:teng_go_app/view/business_page/main.dart';
import 'package:teng_go_app/view/leave_request_page/leaverequest_page.dart';
import 'package:teng_go_app/view/overtime_page/overtime_page.dart';
import 'package:timelines/timelines.dart';


class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  State<ActivitiesPage> createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
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
          title: const Text('Activities'),
          backgroundColor: backgroundColorgreen,
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ButtonBar(
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  side: MaterialStatePropertyAll(
                                      BorderSide(color: colordarkBlue)),
                                  backgroundColor:
                                      MaterialStatePropertyAll(colordarkBlue),
                                ),
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const BusinessTripRequestPage(),
                                    ),
                                  );
                                },
                                child: Text('Business Trip',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                    )),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  side: MaterialStatePropertyAll(
                                      BorderSide(color: colordarkBlue)),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(Colors.white),
                                ),
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const LeaveRequestPage(),
                                    ),
                                  );
                                },
                                child: Text('Leave',
                                    style: GoogleFonts.poppins(
                                      color: buttonGrey,
                                    )),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  side: MaterialStatePropertyAll(
                                      BorderSide(color: colordarkBlue)),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(Colors.white),
                                ),
                                onPressed: () async {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const OvertimePage(),
                                    ),
                                  );
                                },
                                child: Text('Overtime',
                                    style: GoogleFonts.poppins(
                                      color: buttonGrey,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                        width: 375,
                        height: 300,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 20),
                                      child: Text(
                                        "2 Feb 2023",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  SizedBox(
                                    height: 45,
                                    child: TimelineNode(
                                      indicator: DotIndicator(
                                          color: colordarkBlue, size: 10),
                                      endConnector: SolidLineConnector(
                                        color: colordarkBlue,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Request submitted",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 20),
                                      child: Text(
                                        "2 Feb 2023",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  SizedBox(
                                    height: 45,
                                    child: TimelineNode(
                                      startConnector: SolidLineConnector(
                                        color: colordarkBlue,
                                      ),
                                      indicator: DotIndicator(
                                          color: colordarkBlue, size: 10),
                                      endConnector: SolidLineConnector(
                                        color: colordarkBlue,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Approve by Manager",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 20),
                                      child: Text(
                                        "2 Feb 2023",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  SizedBox(
                                    height: 45,
                                    child: TimelineNode(
                                      startConnector: SolidLineConnector(
                                        color: colordarkBlue,
                                      ),
                                      indicator: DotIndicator(
                                          color: colordarkBlue, size: 10),
                                      endConnector: SolidLineConnector(
                                        color: buttonGrey,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Approve by GA",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 20),
                                      child: Text(
                                        "2 Feb 2023",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  SizedBox(
                                    height: 45,
                                    child: TimelineNode(
                                      startConnector: SolidLineConnector(
                                        color: buttonGrey,
                                      ),
                                      indicator: DotIndicator(
                                          color: buttonGrey, size: 10),
                                      endConnector: SolidLineConnector(
                                        color: buttonGrey,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Approve by Finance",
                                        style: GoogleFonts.poppins(
                                            color: buttonGrey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 20),
                                      child: Text(
                                        "2 Feb 2023",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  SizedBox(
                                    height: 45,
                                    child: TimelineNode(
                                      startConnector: SolidLineConnector(
                                        color: buttonGrey,
                                      ),
                                      indicator: DotIndicator(
                                          color: buttonGrey, size: 10),
                                      endConnector: SolidLineConnector(
                                        color: buttonGrey,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Approve by GA",
                                        style: GoogleFonts.poppins(
                                            color: buttonGrey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 20),
                                      child: Text(
                                        "2 Feb 2023",
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                  SizedBox(
                                    height: 45,
                                    child: TimelineNode(
                                      startConnector: SolidLineConnector(
                                        color: buttonGrey,
                                      ),
                                      indicator: DotIndicator(
                                          color: buttonGrey, size: 10),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Completed",
                                        style: GoogleFonts.poppins(
                                            color: buttonGrey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
