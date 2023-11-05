import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:teng_go_app/core/theme.dart';

AppBar approvalBar = AppBar(
  leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white)),
  title: const Text('Approval'),
  backgroundColor: fromCssColor('#77CA91'),
);

AppBar attendanceBar = AppBar(
  leading: IconButton(
    icon: const Icon(
      Icons.arrow_back_ios_new,
      color: Colors.white,
    ),
    onPressed: () {
      // Navigator.pop(context);
    },
  ),
  title: const Text('Attendance'),
  backgroundColor: backgroundColorgreen,
);

AppBar tripreportBar = AppBar(
  leading: IconButton(
    icon: const Icon(
      Icons.arrow_back_ios_new,
      color: Colors.white,
    ),
    onPressed: () {
      // Navigator.pop(context);
    },
  ),
  title: const Text('Attendance'),
  backgroundColor: backgroundColorgreen,
);

AppBar overtimeBar = AppBar(
  leading: IconButton(
      onPressed: () {
        // Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white)),
  title: const Text('Overtime'),
  backgroundColor: fromCssColor('#77CA91'),
);
