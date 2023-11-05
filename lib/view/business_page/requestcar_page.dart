import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teng_go_app/core/theme.dart';
import 'package:teng_go_app/view/business_page/cartrequest_page.dart';

class RequestCartPage extends StatefulWidget {
  const RequestCartPage({super.key});

  @override
  State<RequestCartPage> createState() => _RequestCartPageState();
}

class _RequestCartPageState extends State<RequestCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          "Trip Info",
                          style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                    width: 375,
                    height: 250,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Icon(Icons.calendar_today_outlined,
                                    color: iconColor, size: 30),
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(right: 20, top: 10),
                                  child: Text(
                                    "Enter date",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          divider2,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "To",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                              Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    "Enter date",
                                    style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          divider2,
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
                                        fontSize: 16),
                                  )),
                            ],
                          ),
                          Container(
                            width: 380,
                            height: 105,
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
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
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
                          builder: (_) => const CartRequestPage(),
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
            )),
          ],
        ),
      ],
    ));
  }
}
