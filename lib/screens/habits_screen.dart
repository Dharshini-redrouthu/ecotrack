import 'package:flutter/material.dart';

class HabitsScreen extends StatelessWidget {
  const HabitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1F14),
      appBar: AppBar(title: const Text("Habits")),
      body: const Center(
        child: Text("Track your eco habits 🌿",
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}