import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> topContributors = [
    {
      'name': 'Michael Chen',
      'amount': '\$12,750',
      'image': 'assets/images/michael.jpg',
    },
    {
      'name': 'Emma Johnson',
      'amount': '\$8,450',
      'image': 'assets/images/emma.jpg',
    },
    {
      'name': 'Lisa Rodriguez',
      'amount': '\$6,890',
      'image': 'assets/images/lisa.jpg',
    },
  ];

  final List<Map<String, dynamic>> allRankings = [
    {'rank': 4, 'name': 'David Park', 'amount': '\$5,240'},
    {'rank': 5, 'name': 'Yogendra Nimje', 'amount': '\$4,780', 'you': true},
    {'rank': 6, 'name': 'James Miller', 'amount': '\$4,320'},
    {'rank': 7, 'name': 'Maria Garcia', 'amount': '\$3,950'},
    {'rank': 8, 'name': 'Maria Garcia', 'amount': '\$3,800'},
    {'rank': 9, 'name': 'Maria Garcia', 'amount': '\$2,910'},
    {'rank': 10, 'name': 'Maria Garcia', 'amount': '\$2,220'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            Card(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Donation Leaderboard ',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4,),
                    Text('Top contributors this month'),
                  ],
                ),
              ),
              // SizedBox(height: 4),

            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(topContributors.length, (index) {
                  final contributor = topContributors[index];
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(contributor['image']),
                      ),
                      SizedBox(height: 8),
                      Text(
                        contributor['name'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(contributor['amount'], style: TextStyle(color: Colors.deepPurple)),
                      if (index == 0)
                        Icon(Icons.emoji_events, color: Colors.amber, size: 20),
                    ],
                  );
                }),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'All Rankings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Column(
              children: allRankings.map((user) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    color: user['you'] == true ? Colors.deepPurple.withOpacity(0.1) : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Text("#${user['rank']}", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 16),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/profile.png'),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          user['name'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(user['amount'], style: TextStyle(color: Colors.grey[800]))
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),

    );
  }
}
