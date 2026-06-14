import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1F14),
      appBar: AppBar(title: const Text("Profile")),
      body: const Center(
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.green,
          child: Icon(Icons.person, size: 50),
        ),
      ),
    );
  }
}