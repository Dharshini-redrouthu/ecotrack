import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1F14),
      appBar: AppBar(
        title: const Text("Challenges"),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          _challenge("Carry reusable bottle", "+20 XP"),
          _challenge("No plastic day", "+50 XP"),
          _challenge("Use public transport", "+30 XP"),
        ],
      ),
    );
  }
}

class _challenge extends StatelessWidget {
  final String title;
  final String xp;

  const _challenge(this.title, this.xp);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1B4332),
      child: ListTile(
        leading: const Icon(Icons.emoji_events, color: Colors.greenAccent),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        trailing: Text(xp, style: const TextStyle(color: Colors.orange)),
      ),
    );
  }
}