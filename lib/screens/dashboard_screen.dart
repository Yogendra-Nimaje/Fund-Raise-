import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Hello!, Yogendra',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Let's make a difference today",
                        style: TextStyle(color: Colors.grey)),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Color(0xFF56A8FF),
                  child: Icon(Icons.notifications, color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade800,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$2,450', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Total Donated', style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFF2C80DC),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('24', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('Peoples Supported', style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 24),
            Text('Quick Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _actionTile('Medical', Icons.local_hospital, Colors.pink[100]!),
                _actionTile('Education', Icons.school, Colors.green[100]!),
                _actionTile('Food', Icons.restaurant, Colors.orange[100]!),
                _actionTile('Emergency', Icons.warning, Colors.blue[100]!),
              ],
            ),
            SizedBox(height: 24),
            Text('Featured Campaigns', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            _campaignCard('Help Children s Hospital', 'Supporting pediatric care for underprivileged children', '45,230', 0.87),
            SizedBox(height: 12),
            _campaignCard('Rural School Education', 'Funding for school infrastructure in remote areas', '31,800', 0.67),
          ],
        ),
      ),
    );
  }

  Widget _actionTile(String title, IconData icon, Color bgColor) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(12)),
          child: Icon(icon, color: Colors.black54),
        ),
        SizedBox(height: 4),
        Text(title, style: TextStyle(fontSize: 12))
      ],
    );
  }

  Widget _campaignCard(String title, String subtitle, String raised, double progress) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage('assets/placeholder.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text(subtitle, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 12),
            Text('\$$raised raised', style: TextStyle(color: Color(0xFF6366F1))),
            SizedBox(height: 4),
            LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Color(0xFF6366F1)),
            )
          ],
        ),
      ),
    );
  }
}

