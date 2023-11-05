import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:teng_go_app/view/business_page/businesstrip_page.dart';
import 'package:teng_go_app/view/business_page/requestcar_page.dart';

class BusinessTripRequestPage extends StatefulWidget {
  const BusinessTripRequestPage({super.key});

  @override
  State<BusinessTripRequestPage> createState() =>
      _BusinessTripRequestPageState();
}

class _BusinessTripRequestPageState extends State<BusinessTripRequestPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white)),
            title: const Text('Business Trip request'),
            backgroundColor: fromCssColor('#77CA91'),
          ),
          body: const Column(
            children: <Widget>[
              TabBar(
                tabs: [
                  Tab(
                    child: Text('Business Trip',
                        style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child: Text('Request Car',
                        style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
              Expanded(
                  child: TabBarView(children: [
                // Business Trip Page
                BusinessTripPage(),

                // Request Car Page
                RequestCartPage(),
              ])),
            ],
          )),
    );
  }
}
