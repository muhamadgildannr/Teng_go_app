import 'package:teng_go_app/view/attendance_page/attendance_page.dart';
import 'package:teng_go_app/view/home_page/home_page.dart';
import 'package:teng_go_app/view/approval_page/main.dart';
import 'package:teng_go_app/view/profile_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:teng_go_app/view/notification_page/notification_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  final screens = const [
    HomePage(),
    NotificationPage(),
    AttendancePage(),
    MainPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (index) => setState(() => this.index = index),
          backgroundColor: Colors.white,
          selectedIndex: index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.notifications_none_outlined),
              label: 'Notification',
            ),
            NavigationDestination(
              icon: Icon(Icons.add_circle_outline),
              label: 'Attendance',
            ),
            NavigationDestination(
              icon: Icon(Icons.battery_saver),
              label: 'Approval',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
            ),
          ]),
      // bottomNavigationBar: CurvedNavigationBar(
      //   backgroundColor: Colors.white,
      //   buttonBackgroundColor: fromCssColor('#8DB8FE'),
      //   color: fromCssColor('#4785EA'),
      //   index: index,
      //   onTap: (index) => setState(() => this.index = index),
      //   items: [
      //     const Icon(
      //       Icons.work_history_rounded,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     const Icon(
      //       Icons.home,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //     const Icon(
      //       Icons.person_2,
      //       size: 30,
      //       color: Colors.white,
      //     ),
      //   ],
      // )
    );
  }
}
