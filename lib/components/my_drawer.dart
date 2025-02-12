import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // drawer header
          DrawerHeader(
            child: Icon(Icons.favorite,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),

          // home title
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text("H O M E"),
              onTap: () {
                // this is already the home screen so just pop drawer
                Navigator.pop(context);
              },
            ),
          ),

          // profile tile
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text("P R O F I L E"),
              onTap: () {
                // this is already the home screen so just pop drawer
                Navigator.pop(context);
              },
            ),
          ),

          // users tile
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              leading: Icon(
                Icons.group,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text("U S E R S"),
              onTap: () {
                // this is already the home screen so just pop drawer
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
