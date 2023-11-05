import 'package:teng_go_app/view/main.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:teng_go_app/widgets/appbar_widget.dart';

class OvertimePage extends StatefulWidget {
  const OvertimePage({super.key});

  @override
  State<OvertimePage> createState() => _OvertimePageState();
}

class _OvertimePageState extends State<OvertimePage> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  final _value = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: overtimeBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    // Text("Selected Day = " + today.toString().split(" ")[0])
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: TableCalendar(
                        locale: "en_US",
                        rowHeight: 43,
                        headerStyle: const HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                          titleTextStyle: TextStyle(color: Colors.grey),
                        ),
                        availableGestures: AvailableGestures.all,
                        focusedDay: today,
                        selectedDayPredicate: (day) => isSameDay(day, today),
                        firstDay: DateTime.utc(2020, 12, 12),
                        lastDay: DateTime.utc(2030, 3, 14),
                        calendarStyle: CalendarStyle(
                          selectedDecoration: BoxDecoration(
                            color: fromCssColor(
                                '#77CA91'), // Set the selected day background color
                            shape: BoxShape.circle,
                          ),
                        ),
                        onDaySelected: _onDaySelected,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "Choose Time",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 85),
                      padding: const EdgeInsets.all(18.0),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey))),
                        value: _value,
                        items: const [
                          DropdownMenuItem(
                              value: "-1",
                              child: Text("05:00pm - 09:00pm",
                                  style: TextStyle(color: Colors.grey))),
                          DropdownMenuItem(
                              value: "1",
                              child: Text("05:00pm - 09:00pm",
                                  style: TextStyle(color: Colors.grey))),
                          DropdownMenuItem(
                              value: "2",
                              child: Text("05:00pm - 09:00pm",
                                  style: TextStyle(color: Colors.grey))),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              today.toString().split(" ")[0],
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Text(
                              '05:00pm - 09:00pm',
                              style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 20),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                fromCssColor('#77CA91'))),
                        onPressed: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const Overtime2(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 12, left: 30, right: 30),
                          child: Text('Submit',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

class Overtime2 extends StatefulWidget {
  const Overtime2({super.key});

  @override
  State<Overtime2> createState() => _Overtime2State();
}

class _Overtime2State extends State<Overtime2> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  final _value = "-1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: overtimeBar,
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    // Text("Selected Day = " + today.toString().split(" ")[0])
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: TableCalendar(
                        locale: "en_US",
                        rowHeight: 43,
                        headerStyle: const HeaderStyle(
                          formatButtonVisible: false,
                          titleCentered: true,
                          titleTextStyle: TextStyle(color: Colors.grey),
                        ),
                        availableGestures: AvailableGestures.all,
                        focusedDay: today,
                        selectedDayPredicate: (day) => isSameDay(day, today),
                        firstDay: DateTime.utc(2020, 12, 12),
                        lastDay: DateTime.utc(2030, 3, 14),
                        calendarStyle: CalendarStyle(
                          selectedDecoration: BoxDecoration(
                            color: fromCssColor(
                                '#77CA91'), // Set the selected day background color
                            shape: BoxShape.circle,
                          ),
                        ),
                        onDaySelected: _onDaySelected,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "Choose Time",
                              style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            )),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.all(18.0),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(color: Colors.grey))),
                        value: _value,
                        items: const [
                          DropdownMenuItem(
                              value: "-1",
                              child: Text("05:00pm - 09:00pm",
                                  style: TextStyle(color: Colors.grey))),
                          DropdownMenuItem(
                              value: "1",
                              child: Text("05:00pm - 09:00pm",
                                  style: TextStyle(color: Colors.grey))),
                          DropdownMenuItem(
                              value: "2",
                              child: Text("05:00pm - 09:00pm",
                                  style: TextStyle(color: Colors.grey))),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 85,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "Time Request",
                                        style: GoogleFonts.poppins(
                                            color: fromCssColor('#858585'),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
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
                                        "Start from:",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 20),
                                      child: Text(
                                        "05:00pm",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: fromCssColor('#A3A3A3'),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, left: 20),
                                      child: Text(
                                        "End:",
                                        style: GoogleFonts.poppins(
                                            color: fromCssColor('#858585'),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, right: 20),
                                      child: Text(
                                        "09:00pm",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      )),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                indent: 20,
                                endIndent: 20,
                                color: fromCssColor('#A3A3A3'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          backgroundColor:
                                              fromCssColor('#77CA91'),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => const MyHomePage(),
                                            ),
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              left: 150,
                                              right: 150),
                                          child: Text('Ok',
                                              style: GoogleFonts.poppins(
                                                fontSize: 20,
                                                color: Colors.white,
                                              )),
                                        ),
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
