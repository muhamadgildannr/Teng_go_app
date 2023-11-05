import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teng_go_app/view/approval_page/approval_page.dart';
import 'package:teng_go_app/view/business_page/activities_page.dart';
import 'package:teng_go_app/view/leave_request_page/leaverequest_page.dart';
import 'package:teng_go_app/view/overtime_page/overtime_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TabBar get _tabBar => const TabBar(
        tabs: [
          Tab(
            child: Text('Pending', style: TextStyle(color: Colors.black)),
          ),
          Tab(
            child: Text('Approved', style: TextStyle(color: Colors.grey)),
          ),
          Tab(
            child: Text('Rejected', style: TextStyle(color: Colors.grey)),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white)),
            title: const Text('Approval'),
            backgroundColor: fromCssColor('#77CA91'),
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: Colors.white,
                shadowColor: Colors.white,
                child: _tabBar,
              ),
            ),
          ),
          body: Stack(
            children: [
              ListView(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ButtonBar(
                                  children: [
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                fromCssColor('#77CA91')),
                                      ),
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (_) => Tab1(),
                                        //   ),
                                        // );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 15,
                                            right: 15),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('All',
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                )),
                                            const SizedBox(
                                              width: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        side: MaterialStatePropertyAll(
                                            BorderSide(
                                                color:
                                                    fromCssColor('#77CA91'))),
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                Colors.white),
                                      ),
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const ActivitiesPage(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 5,
                                            right: 5),
                                        child: Text('Business Trip',
                                            style: GoogleFonts.poppins(
                                              color: fromCssColor('#77CA91'),
                                            )),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        side: MaterialStatePropertyAll(
                                            BorderSide(
                                                color:
                                                    fromCssColor('#77CA91'))),
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                Colors.white),
                                      ),
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const LeaveRequestPage(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 5,
                                            right: 5),
                                        child: Row(
                                          children: [
                                            Text('Leave',
                                                style: GoogleFonts.poppins(
                                                  color:
                                                      fromCssColor('#77CA91'),
                                                )),
                                            const SizedBox(
                                              width: 30,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        side: MaterialStatePropertyAll(
                                            BorderSide(
                                                color:
                                                    fromCssColor('#77CA91'))),
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                Colors.white),
                                      ),
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const OvertimePage(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 10,
                                            left: 5,
                                            right: 5),
                                        child: Text('Overtime',
                                            style: GoogleFonts.poppins(
                                              color: fromCssColor('#77CA91'),
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          margin: const EdgeInsets.only(
                              bottom: 5, left: 3, right: 3),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Padding(
                                //   padding: EdgeInsets.only(left: 5, right: 10),
                                //   child: Icon(
                                //     Icons.search,
                                //     color: Colors.grey,
                                //   ),
                                // ),
                                Container(
                                  width: 250,
                                  child: TextFormField(
                                    style: const TextStyle(fontSize: 15),
                                    decoration: const InputDecoration(
                                        hintText: "Search request",
                                        border: InputBorder.none),
                                  ),
                                ),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.menu_sharp,
                                    color: Colors.grey,
                                  ),
                                )
                              ]),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 380,
                        height: 230,
                        // margin: const EdgeInsets.only(
                        //     bottom: 5, left: 13, right: 13),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'assets/images/img.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Andy Murray has a request for",
                                      style: GoogleFonts.poppins(
                                          // fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: fromCssColor("#777777")),
                                    ),
                                    Text(
                                      "leave and it’s waiting",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: fromCssColor("#777777")),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'for your approval',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: fromCssColor("#777777")),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Date:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: fromCssColor("#777777")),
                                ),
                                const SizedBox(
                                  width: 35,
                                ),
                                Text(
                                  "2 Feb 2023 - 4 Feb 2023",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text(
                                    "Days:",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: fromCssColor("#777777")),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 110),
                                  child: Text(
                                    "2 Days",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ButtonBar(
                                  children: [
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        side: MaterialStatePropertyAll(
                                            BorderSide(
                                                color:
                                                    fromCssColor('#77CA91'))),
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                Colors.white),
                                      ),
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const ApprovalPage(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 5,
                                            right: 5),
                                        child: Text('Rejected',
                                            style: GoogleFonts.poppins(
                                              color: fromCssColor('#77CA91'),
                                            )),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                fromCssColor('#77CA91')),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const ApprovalPage(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 5,
                                            right: 5),
                                        child: Text('Approved',
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 380,
                        height: 230,
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          'assets/images/img.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "Andy Murray has a request for",
                                      style: GoogleFonts.poppins(
                                          // fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: fromCssColor("#777777")),
                                    ),
                                    Text(
                                      "leave and it’s waiting",
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          color: fromCssColor("#777777")),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text(
                                        'for your approval',
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: fromCssColor("#777777")),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Date:",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: fromCssColor("#777777")),
                                ),
                                const SizedBox(
                                  width: 35,
                                ),
                                Text(
                                  "2 Feb 2023 - 4 Feb 2023",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12, color: Colors.black),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 77),
                                  child: Text(
                                    "Days:",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: fromCssColor("#777777")),
                                  ),
                                ),
                                // SizedBox(
                                //   width: 135,
                                // ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 34),
                                  child: Text(
                                    "2 Days",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ButtonBar(
                                  children: [
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        side: MaterialStatePropertyAll(
                                            BorderSide(
                                                color:
                                                    fromCssColor('#77CA91'))),
                                        backgroundColor:
                                            const MaterialStatePropertyAll(
                                                Colors.white),
                                      ),
                                      onPressed: () async {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const ApprovalPage(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 5,
                                            right: 5),
                                        child: Text('Rejected',
                                            style: GoogleFonts.poppins(
                                              color: fromCssColor('#77CA91'),
                                            )),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                fromCssColor('#77CA91')),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const ApprovalPage(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 5,
                                            right: 5),
                                        child: Text('Approved',
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
