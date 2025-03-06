import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:hms_app/routes/routenames.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    title: const Text(
      'Hospital Management System',
      style: TextStyle(
        color: Color(0xFF2ECC71),
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications, color: Colors.black),
      ),
      IconButton(
        onPressed: () {
          context.go(RouteNames.login);
        },
        icon: const Icon(Icons.logout_outlined, color: Colors.black),
      ),
    ],
  );
}

TextStyle textFieldStyle(Color color, FontWeight weight, double size) {
  return TextStyle(color: color, fontWeight: weight, fontSize: size);
}

Widget drawerItem(
  BuildContext context, {
  required IconData icon,
  required String title,
  required String route,
  required String currentRoute,
}) {
  bool isSelected = currentRoute == route;

  return ListTile(
    leading: Icon(
      icon,
      color: isSelected ? Colors.white : Colors.black,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
    ),
    tileColor: isSelected ? Colors.green : Colors.transparent,
    onTap: () {
      context.go(route);
    },
  );
}

Drawer drawer(BuildContext context) {
  String currentRoute = GoRouterState.of(context).uri.toString();

  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(color: Color(0xFF2ECC71)),
          child: const Text(
            'Menu',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        drawerItem(context,
            icon: Icons.home,
            title: 'Home',
            route: RouteNames.home,
            currentRoute: currentRoute),
        drawerItem(context,
            icon: Icons.info,
            title: 'About',
            route: RouteNames.about,
            currentRoute: currentRoute),
        drawerItem(context,
            icon: FontAwesomeIcons.calendarCheck,
            title: 'Appointments',
            route: RouteNames.appointment,
            currentRoute: currentRoute),
        drawerItem(context,
            icon: Icons.contact_page,
            title: 'Contact',
            route: RouteNames.contact,
            currentRoute: currentRoute),
        drawerItem(context,
            icon: Icons.login,
            title: 'Login',
            route: RouteNames.login,
            currentRoute: currentRoute),
      ],
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(context),
      body: const Center(
          child: Text('Home Page', style: TextStyle(fontSize: 24))),
    );
  }
}
