import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia/components/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // logout user
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
      ),
      drawer: MyDrawer(),
    );
  }
}
