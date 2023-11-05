import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rounded_background_text/rounded_background_text.dart';
import 'package:teng_go_app/core/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: padding2XL, top: padding2XL),
                                    child: SizedBox(
                                      height: 65,
                                      width: 50,
                                      child: Expanded(
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/imran.png'),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 80, top: 20),
                                          child: Text(
                                            "Hi, Imran santoso",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          )),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              right: 50, top: 4),
                                          child: Text(
                                            "IT Staff",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontSize: 10),
                                          )),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Expanded(
                                          child: IconButton(
                                              onPressed: () {
                                                // Navigator.push(
                                                //   context,
                                                //   MaterialPageRoute(
                                                //     builder: (_) => NotificationPage(),
                                                //   ),
                                                // );
                                              },
                                              icon: const Icon(
                                                Icons.notifications_outlined,
                                                color: Colors.black,
                                                size: 35,
                                              )),
                                        ),
                                        // ImageIcon(AssetImage('assets/images/pending.png'))
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Text(
                                  "What’s Up Today?",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 70,
                                height: 100,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                ),
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 10),
                                      RoundedBackgroundText(
                                        'Feb',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                        backgroundColor: colorGreen3,
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "04",
                                        style: GoogleFonts.poppins(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 100,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                ),
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        height: 95,
                                        child: VerticalDivider(
                                          color: colorGreen3,
                                          thickness: 5,
                                          indent: 10,
                                          endIndent: 10,
                                          width: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Leave Request",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "27 - 28 Feb 2023",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(height: 5),
                                          RoundedBackgroundText(
                                            'Pending Approval',
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                            backgroundColor: colorYellow,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.4,
                                height: 100,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                ),
                                child: Card(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      SizedBox(
                                        height: 95,
                                        child: VerticalDivider(
                                          color: colordarkBlue,
                                          thickness: 5,
                                          indent: 10,
                                          endIndent: 10,
                                          width: 15,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Leave Request",
                                            style: GoogleFonts.poppins(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 13),
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "27 - 28 Feb 2023",
                                            style: GoogleFonts.poppins(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10),
                                          ),
                                          const SizedBox(height: 5),
                                          RoundedBackgroundText(
                                            'Pending Approval',
                                            style: const TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12),
                                            backgroundColor: colorYellow,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Text(
                                  "Services",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/icon1.png',
                                  height: 50,
                                  width: 50,
                                ),
                                Text(
                                  "Attendance",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/icon2.png',
                                  height: 50,
                                  width: 50,
                                ),
                                Text(
                                  "Overtime",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/icon3.png',
                                  height: 50,
                                  width: 50,
                                ),
                                Text(
                                  "Leave",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/icon4.png',
                                  height: 50,
                                  width: 50,
                                ),
                                Text(
                                  "Task",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Text(
                                  "Office News",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 360,
                                    height: 125,
                                    decoration: BoxDecoration(
                                      color: backgroundColorgreen,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            height: 125,
                                            width: 170,
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(
                                                  12,
                                                ),
                                                bottomRight:
                                                    Radius.circular(12),
                                              ),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/baby.png"),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                width: 100,
                                                decoration: const BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey,
                                                        blurRadius: 150,
                                                        spreadRadius: 10,
                                                        offset: Offset(0, 0),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 10),
                                              Text(
                                                "Baby Born",
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                "Welcome a baby boy to Our Family",
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                "Love,",
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              Text(
                                                "Douglas and Martha",
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 360,
                                    height: 125,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Stack(
                                      children: [
                                        // Align(
                                        //   alignment: Alignment.centerRight,
                                        //   child: Container(
                                        //     height: 125,
                                        //     width: 170,
                                        //     decoration: BoxDecoration(
                                        //       borderRadius: BorderRadius.only(
                                        //         topRight: Radius.circular(
                                        //           12,
                                        //         ),
                                        //         bottomRight:
                                        //             Radius.circular(12),
                                        //       ),
                                        //       image: DecorationImage(
                                        //         image: AssetImage(
                                        //             "assets/images/baby.png"),
                                        //         fit: BoxFit.cover,
                                        //       ),
                                        //     ),
                                        //     child: Align(
                                        //       alignment: Alignment.centerLeft,
                                        //       child: Container(
                                        //         width: 100,
                                        //         decoration:
                                        //             BoxDecoration(boxShadow: [
                                        //           BoxShadow(
                                        //             color: Colors.white,
                                        //             blurRadius: 100,
                                        //             spreadRadius: 10,
                                        //             offset: Offset(0, 0),
                                        //           ),
                                        //         ]),
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(height: 10),
                                              Text(
                                                "Our deepest condolences",
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              Text(
                                                "May the love of those around you...",
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              // Text(
                                              //   "Love,",
                                              //   style: GoogleFonts.poppins(
                                              //     color: Colors.white,
                                              //     fontWeight: FontWeight.w500,
                                              //     fontSize: 11,
                                              //   ),
                                              // ),
                                              Text(
                                                "Management",
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Text(
                                  "Announcement",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/natal.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pengumuman libur Natal tahun 2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: textdarkBlue),
                                          ),
                                          Text(
                                            "Admin   20/12/2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: buttonGrey4),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Perusahaan mengumumkan bahwa hari libur...',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: buttonGrey4),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/natal.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pengumuman libur Natal tahun 2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: textdarkBlue),
                                          ),
                                          Text(
                                            "Admin   20/12/2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: buttonGrey4),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Perusahaan mengumumkan bahwa hari libur...',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: buttonGrey4),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/natal.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pengumuman libur Natal tahun 2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: textdarkBlue),
                                          ),
                                          Text(
                                            "Admin   20/12/2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: buttonGrey4),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Perusahaan mengumumkan bahwa hari libur...',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: buttonGrey4),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/natal.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pengumuman libur Natal tahun 2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: textdarkBlue),
                                          ),
                                          Text(
                                            "Admin   20/12/2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: buttonGrey4),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Perusahaan mengumumkan bahwa hari libur...',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: buttonGrey4),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Card(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image.asset(
                                              'assets/images/natal.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pengumuman libur Natal tahun 2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                                color: textdarkBlue),
                                          ),
                                          Text(
                                            "Admin   20/12/2022",
                                            style: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                color: buttonGrey4),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Perusahaan mengumumkan bahwa hari libur...',
                                            style: GoogleFonts.poppins(
                                                fontSize: 10, color: buttonGrey4),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}