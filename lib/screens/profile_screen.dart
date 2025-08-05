import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(Icons.volunteer_activism,color: Colors.blue.shade700,),
            SizedBox(width: 8),
            Text(
              'FundRaise',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildProfileCard(),
          const SizedBox(height: 16),
          _buildMenuSection("Edit Profile", Icons.edit),
          _buildMenuSection("My Donations", Icons.favorite),
          _buildMenuSection("Badges & Achievements", Icons.emoji_events),
          _buildMenuSection("Impact Report", Icons.bar_chart),
          const Divider(),
          _buildMenuSection("Notifications", Icons.notifications),
          _buildMenuSection("Privacy & Security", Icons.lock),
          _buildMenuSection("Payment Methods", Icons.payment),
          _buildMenuSection("Help & Support", Icons.help),
        ],
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage("assets/profile.jpg"), // Replace with your profile image
          ),
          const SizedBox(height: 8),
          const Text("Yogendra Nimje", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const Text("Gold Donor • Member since 2023"),
          const SizedBox(height: 4),
          const Text("Rank #5   \$4,780 donated", style: TextStyle(color: Colors.deepPurple)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatBox("24", "Campaigns", Colors.purple.shade100),
              _buildStatBox("8", "Badges", Colors.green.shade100),
              _buildStatBox("156", "Impact Points", Colors.blue.shade100),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatBox(String count, String label, Color bgColor) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(count, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildMenuSection(String title, IconData icon) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4),
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {
        // Add navigation logic
      },
    );
  }
}
