import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teng_go_app/core/theme.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded,
                color: Colors.white)),
        title: const Text('Notification'),
        backgroundColor: colordarkBlue,
      ),
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
                          padding: const EdgeInsets.only(left: 25, top: 25),
                          child: Text(
                            "Latest",
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          )),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: dividerColor,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: blueBackground,
                              child: Icon(Icons.work_off_rounded,
                                  color: iconColor, size: 25),
                            ),
                            title: Text(
                              'Perdin',
                              style: GoogleFonts.poppins(
                                  color: textColors,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Pengajuan perjalananmu sudah di setujui, siapkan semua dokumen perjalanan dan selamat sampai tujuan',
                                style: GoogleFonts.poppins(
                                    color: textColors,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 10),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Divider(
                    thickness: 1,
                    color: dividerColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        ListTile(
                          // tileColor: fromCssColor('#D3ECF8'),
                          leading: CircleAvatar(
                            backgroundColor: blueBackground,
                            child: Icon(Icons.calendar_today,
                                color: iconColor, size: 25),
                          ),
                          title: Text(
                            'Leave',
                            style: GoogleFonts.poppins(
                                color: textColors,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                        
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Pengajuan Cuti sudah di setujui.',
                              style: GoogleFonts.poppins(
                                color: textColors,
                                fontWeight: FontWeight.w500,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: dividerColor,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          ListTile(
                            // tileColor: fromCssColor('#D3ECF8'),
                            leading: CircleAvatar(
                              backgroundColor: blueBackground,
                              child: Icon(
                                Icons.hourglass_top_sharp,
                                color: iconColor,
                                size: 25,
                              ),
                            ),
                            title: Text(
                              'Overtime',
                              style: GoogleFonts.poppins(
                                color: textColors,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Pengajuan Lembur sudah di setujui.',
                                style: GoogleFonts.poppins(
                                  color: textColors,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                  // Divider(
                  //   thickness: 1,
                  //   color: dividerColor,
                  // ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
