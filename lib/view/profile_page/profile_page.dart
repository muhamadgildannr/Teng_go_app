import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitched = false;

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
          title: const Text('Profile'),
          backgroundColor: fromCssColor('#77CA91'),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, top: 10),
                                child: Text(
                                  // "Hello, $name",
                                  "Jonathan Nunez",
                                  style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, top: 4),
                                child: Text(
                                  "IT Staff",
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey, fontSize: 13),
                                )),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, top: 2),
                                child: Text(
                                  "Head Office",
                                  style: GoogleFonts.poppins(
                                      color: Colors.grey, fontSize: 13),
                                )),
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: SizedBox(
                              height: 65,
                              width: 65,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/imran.png'),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 25, top: 15),
                            child: Text(
                              "My Account",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        child: ListTile(
                          leading: Icon(Icons.person_outline_sharp,
                              color: fromCssColor('#174D84'), size: 35),
                          title: Text(
                            'Person Info',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp,
                              color: fromCssColor('#858585')),
                          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')))
                        )),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ListTile(
                          leading: Icon(Icons.work_outline_rounded,
                              color: fromCssColor('#174D84'), size: 35),
                          title: Text(
                            'Working Info',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp,
                              color: fromCssColor('#858585')),
                          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')))
                        )),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ListTile(
                          leading: Icon(Icons.add_ic_call_outlined,
                              color: fromCssColor('#174D84'), size: 35),
                          title: Text(
                            'Emergency Contact',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp,
                              color: fromCssColor('#858585')),
                          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')))
                        )),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ListTile(
                          leading: Icon(Icons.groups_outlined,
                              color: fromCssColor('#174D84'), size: 35),
                          title: Text(
                            'Family Info',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp,
                              color: fromCssColor('#858585')),
                          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')))
                        )),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ListTile(
                          leading: Icon(Icons.school_outlined,
                              color: fromCssColor('#174D84'), size: 35),
                          title: Text(
                            'Family Info',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp,
                              color: fromCssColor('#858585')),
                          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')))
                        )),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ListTile(
                          leading: Icon(Icons.payment_sharp,
                              color: fromCssColor('#174D84'), size: 35),
                          title: Text(
                            'Payroll Info',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp,
                              color: fromCssColor('#858585')),
                          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')))
                        )),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 25, top: 15),
                            child: Text(
                              "Account Setting",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        child: ListTile(
                          leading: Icon(Icons.lock_person_sharp,
                              color: fromCssColor('#174D84'), size: 35),
                          title: Text(
                            'Change Password',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_sharp,
                              color: fromCssColor('#858585')),
                          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')))
                        )),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: fromCssColor('#A3A3A3'),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ListTile(
                          leading: Icon(Icons.fingerprint_rounded,
                              color: fromCssColor('#174D84'), size: 35),
                          title: Text(
                            'Fingerprint',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          trailing: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                          ),
                          // trailing: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')),
                          // trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_sharp,
                          //     color: fromCssColor('#858585')))
                        )),
                    Divider(
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                      color: fromCssColor('#A3A3A3'),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
