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
          "Good Morning, Greenie 🌱",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Your Impact Today",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCard("CO₂ Saved", "2.45 kg", Icons.eco),
                _buildCard("Energy", "1.21 kWh", Icons.flash_on),
                _buildCard("Water", "152 L", Icons.water_drop),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Daily Streak 🔥",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1B4332),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("7 Days", style: TextStyle(color: Colors.white, fontSize: 20)),
                  Icon(Icons.local_fire_department, color: Colors.orange, size: 40),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Today's Challenge",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF14532D),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Text(
                "Use public transport +30 XP",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String value, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 100,
      decoration: BoxDecoration(
        color: const Color(0xFF1B4332),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.greenAccent),
          const SizedBox(height: 10),
          Text(title, style: const TextStyle(color: Colors.white70, fontSize: 10)),
          Text(value, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}