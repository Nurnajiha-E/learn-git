// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_final_project/pages/SettingPage.dart';
// import 'package:my_final_project/pages/login_page.dart';
import 'package:my_final_project/services/auth/auth_service.dart';

class MyDrawer extends StatelessWidget {

  const MyDrawer({super.key});

  void logout(){
    // get auth service
    final auth = AuthService();
    auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [

          // logo
          Material(
            child: DrawerHeader(
              decoration: BoxDecoration(
                border: Border(bottom:BorderSide(color: Colors.transparent) )
              ),
              child: Center(
                child: Icon(
                  Icons.message,
                  color: Theme.of(context).colorScheme.primary,
                  size: 50,
                ),
              ),
            ),
          ),

          // home list tile
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListTile(
              title: Text("H O M E"),
              leading: Icon(Icons.home),
              onTap: () {
                //pop the drawer ปิดdrawerลง
                Navigator.pop(context);
              },
            ),
          ),

          // setting list tile
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListTile(
              title: Text("S E T T I N G S"),
              leading: Icon(Icons.settings),
              onTap: () {
                //pop the drawer
                Navigator.pop(context);
                // Navigate to setting Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsPage(),
                  ),
                );
              },
            ),
          ),

          // logout list
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListTile(
              title: Text("L O G O U T"),
              leading: Icon(Icons.logout),
              onTap: logout,
            ),
          )
        ],
      ),
    );
  }
}
