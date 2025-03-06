import 'package:flutter/material.dart';
import 'package:hms_app/widgets/navbar.dart';
import 'package:hms_app/widgets/home_carousel.dart';
import 'package:hms_app/widgets/card_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(context),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x2ECC71), Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: HomeCarousel(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        cardLayout(
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Health Check Ups',
                                  style: textFieldStyle(
                                    Color(0xFF2ECC71),
                                    FontWeight.bold,
                                    18.0,
                                  ),
                                ),
                                SizedBox(height: 3.0),
                                Text(
                                  'Besides providing world class clinical lab services, Labaid Diagnostic Centre houses a pool of doctors of different medical specialty to serve the ailing patients as outpatients. They are all reputed and respected in their medical specialty for outstanding clinical management',
                                  style: textFieldStyle(
                                    Colors.black,
                                    FontWeight.normal,
                                    14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        cardLayout(
                          Container(
                            child: ListTile(
                              leading: Icon(
                                Icons.check_circle,
                                color: Color(0xFF2ECC71),
                              ),
                              title: Text(
                                'EMERGENCY CASE',
                                style: textFieldStyle(
                                  Color(0xFF2ECC71),
                                  FontWeight.bold,
                                  18.0,
                                ),
                              ),
                              subtitle: Text(
                                'Unless they are blinded by lust and do not gnaw, they are in fault who forsake their duties',
                                style: textFieldStyle(
                                  Colors.black,
                                  FontWeight.normal,
                                  14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        cardLayout(
                          Container(
                            child: ListTile(
                              leading: Icon(
                                Icons.check_circle,
                                color: Color(0xFF2ECC71),
                              ),
                              title: Text(
                                'QUALIFIED DOCTORS',
                                style: textFieldStyle(
                                  Color(0xFF2ECC71),
                                  FontWeight.bold,
                                  18.0,
                                ),
                              ),
                              subtitle: Text(
                                'Unless they are blinded by lust and do not gnaw, they are in fault who forsake their duties',
                                style: textFieldStyle(
                                  Colors.black,
                                  FontWeight.normal,
                                  14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        cardLayout(
                          Container(
                            child: ListTile(
                              leading: Icon(
                                Icons.check_circle,
                                color: Color(0xFF2ECC71),
                              ),
                              title: Text(
                                'ONLINE APPOINTMENT',
                                style: textFieldStyle(
                                  Color(0xFF2ECC71),
                                  FontWeight.bold,
                                  18.0,
                                ),
                              ),
                              subtitle: Text(
                                'Unless they are blinded by lust and do not gnaw, they are in fault who forsake their duties',
                                style: textFieldStyle(
                                  Colors.black,
                                  FontWeight.normal,
                                  14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        cardLayout(
                          Container(
                            child: ListTile(
                              leading: Icon(
                                Icons.check_circle,
                                color: Color(0xFF2ECC71),
                              ),
                              title: Text(
                                'FREE MEDICAL COUNSELING',
                                style: textFieldStyle(
                                  Color(0xFF2ECC71),
                                  FontWeight.bold,
                                  18.0,
                                ),
                              ),
                              subtitle: Text(
                                'Unless they are blinded by lust and do not gnaw, they are in fault who forsake their duties',
                                style: textFieldStyle(
                                  Colors.black,
                                  FontWeight.normal,
                                  14.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
