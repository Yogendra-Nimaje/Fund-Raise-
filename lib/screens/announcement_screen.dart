import 'package:flutter/material.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  Widget buildCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required String time,
    Widget? action,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: iconColor.withOpacity(0.2),
                  child: Icon(icon, color: iconColor),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                Text(
                  time,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            if (action != null) ...[
              const SizedBox(height: 12),
              action
            ]
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.only(top: 16, bottom: 80),
        children: [
          Text('Announcement',style: TextStyle(
            fontSize: 26
          ),),
          buildCard(
            icon: Icons.warning,
            iconColor: Colors.red,
            title: "Emergency Relief Fund",
            subtitle:
            "Urgent need for flood relief donations. Families in the coastal areas need immediate assistance with food, water, and shelter.",
            time: "2 hours ago",
            action: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: const Text("Donate Now"),
            ),
          ),
          buildCard(
            icon: Icons.check_circle,
            iconColor: Colors.green,
            title: "Campaign Success",
            subtitle:
            "The Children's Hospital renovation campaign has reached 100% of its goal thanks to amazing donors like you. Goal Achieved: \$50,000",
            time: "1 day ago",
          ),
          buildCard(
            icon: Icons.redeem,
            iconColor: Colors.indigo,
            title: "New Reward Program",
            subtitle:
            "Introducing DonateLink Rewards! Earn points for every donation and unlock exclusive badges and recognition levels.",
            time: "3 days ago",
            action: OutlinedButton(
              onPressed: () {},
              child: const Text("Learn More"),
            ),
          ),
          buildCard(
            icon: Icons.event,
            iconColor: Colors.purple,
            title: "Upcoming Event",
            subtitle:
            "Join us for the Annual Charity Gala on December 15th. Meet fellow donors and learn about the impact of your contributions.",
            time: "1 week ago",
            action: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text("Register"),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Remind Me"),
                ),
              ],
            ),
          ),
          buildCard(
            icon: Icons.star,
            iconColor: Colors.amber,
            title: "Featured Donor",
            subtitle:
            "Congratulations to Michael Chen for becoming our top donor this month with \$12,750 in contributions across multiple campaigns.",
            time: "2 weeks ago",
          ),
        ],
      ),
    );
  }
}
