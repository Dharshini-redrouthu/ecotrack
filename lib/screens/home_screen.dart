import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1F14),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Good Morning 🌱",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Your Impact Today",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _card("CO₂", "2.45 kg", Icons.eco),
                _card("Energy", "1.21 kWh", Icons.bolt),
                _card("Water", "152 L", Icons.water_drop),
              ],
            ),

            const SizedBox(height: 25),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1B5E20), Color(0xFF2E7D32)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("🔥 7 Day Streak",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      SizedBox(height: 5),
                      Text("Keep going!",
                          style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                  Icon(Icons.local_fire_department,
                      color: Colors.orange, size: 40),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "Today's Challenge",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1B4332),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                children: [
                  Icon(Icons.directions_bus, color: Colors.greenAccent),
                  SizedBox(width: 10),
                  Text("Use Public Transport +30 XP",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(String title, String value, IconData icon) {
    return Container(
      width: 105,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1B4332),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.greenAccent),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(color: Colors.white70)),
          Text(value, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}