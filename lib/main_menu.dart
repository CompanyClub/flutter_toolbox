import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const Center(
        child: Text('My Flutter Toolbox App'),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Random words'),
              onTap: () {
                Navigator.pushNamed(context, '/randomwords');
              },
            ),
            ListTile(
              title: const Text('Hero'),
              onTap: () {
                Navigator.pushNamed(context, '/hero');
              },
            ),
            ListTile(
              title: const Text('Return data'),
              onTap: () {
                Navigator.pushNamed(context, '/returndata');
              },
            ),
            ListTile(
              title: const Text('Routing'),
              onTap: () {
                Navigator.pushNamed(context, '/routing');
              },
            ),
            ListTile(
              title: const Text('Validation'),
              onTap: () {
                Navigator.pushNamed(context, '/validation');
              },
            ),
            ListTile(
              title: const Text('Custom drawer (N/A)'),
              onTap: () {
                Navigator.pushNamed(context, '/customdrawer');
              },
            ),
            ListTile(
              title: const Text('Data fetch'),
              onTap: () {
                Navigator.pushNamed(context, '/datafetch');
              },
            ),
            ListTile(
              title: const Text('Data send'),
              onTap: () {
                Navigator.pushNamed(context, '/datasend');
              },
            ),
            ListTile(
              title: const Text('Fetch json'),
              onTap: () {
                Navigator.pushNamed(context, '/fetchjson');
              },
            )
          ],
        ),
      ),
    );
  }
}
