import 'package:finguru/features/ExploreStartups.dart';
import 'package:finguru/features/view_investment.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvestorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investor Dashboard'),
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.green[900]!, Colors.white],
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Welcome, Investor!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 6, // Adjust the crossAxisCount
              padding: EdgeInsets.zero,
              children: [
                _buildOptionTile(
                  icon: Icons.explore,
                  title: 'Explore Startups',
                  onTap: () => Get.to(() => ExploreStartupsPage()),
                ),
                _buildOptionTile(
                  icon: Icons.attach_money,
                  title: 'View Investments',
                  onTap: () => Get.to(() => ViewInvestmentsPage()),
                ),
                _buildOptionTile(
                  icon: Icons.notifications,
                  title: 'Notifications',
                  onTap: () {
                    // Navigate to a page where investors can view notifications
                  },
                ),
                _buildOptionTile(
                  icon: Icons.leaderboard,
                  title: 'Leaderboard',
                  onTap: () {
                    // Navigate to a page showing the leaderboard
                  },
                ),
                _buildOptionTile(
                  icon: Icons.settings,
                  title: 'Settings',
                  onTap: () {
                    // Navigate to a page where investors can adjust settings
                  },
                ),
                _buildOptionTile(
                  icon: Icons.help,
                  title: 'Help & Support',
                  onTap: () {
                    // Navigate to a page providing help and support
                  },
                ),
              ],
            ),
            Column(
              children: [
                _buildHeadingTile(title: 'Startup Recommendations'),
                _buildStartupRecommendations(),
                _buildHeadingTile(title: 'Latest News'),
                _buildLatestNews(),
                _buildHeadingTile(title: 'Upcoming Startup Events'),
                _buildUpcomingEvents(),
              ],
            )
          ]),
        ),
      ),
    );
  }

  Widget _buildOptionTile(
      {required IconData icon,
      required String title,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.green[900],
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green[900],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadingTile({required String title}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  Widget _buildStartupRecommendations() {
    return Row(
      children: [
        // Add your startup recommendations here
        _buildStartupCard(
          name: 'Tech Innovations Inc.',
          description: 'Revolutionizing AI technology.',
        ),
        _buildStartupCard(
          name: 'GreenTech Solutions',
          description: 'Leading the way in sustainable tech.',
        ),
        _buildStartupCard(
          name: 'HealthTech Solutions',
          description: 'Innovative healthcare technology company.',
        ),
        _buildStartupCard(
          name: 'FutureTech Industries',
          description: 'Pioneering advancements in futuristic tech.',
        ),
      ],
    );
  }

  Widget _buildLatestNews() {
    return Column(
      children: [
        // Add your latest news here
        _buildNewsCard(
          title: 'Promising Startup Unveils Breakthrough Medical Device',
          content:
              'A newly launched startup has introduced a revolutionary medical device aimed at improving patient care and outcomes. The innovative technology has already garnered significant attention within the healthcare industry, with experts praising its potential to revolutionize medical treatment.',
        ),
        _buildNewsCard(
          title: 'Renewable Energy Investments Reach Record High',
          content:
              'Recent reports indicate a surge in investments in renewable energy projects, marking a significant milestone for the green energy sector. With increasing awareness of environmental sustainability and the growing demand for clean energy solutions, investors are seizing opportunities to support renewable initiatives worldwide.',
        ),

        _buildNewsCard(
          title: 'AI-driven Startup Raises Rs. 10 Million in Funding',
          content:
              'A startup specializing in artificial intelligence applications recently announced a successful funding round, securing Rs. 10 million from prominent investors. The company plans to utilize the funding to further develop its cutting-edge AI technology and expand its market reach.',
        ),
        _buildNewsCard(
          title: 'Renewable Energy Sector Sees Surge in Investments',
          content:
              'Investors are increasingly turning their attention to the renewable energy sector, with a recent surge in investments observed across various green energy projects. This trend reflects growing interest in sustainable solutions and the potential for significant returns in the clean energy market.',
        ),
      ],
    );
  }

  Widget _buildUpcomingEvents() {
    return Row(
      children: [
        // Add your upcoming events here
        _buildEventCard(
          title: 'Startup Expo 2024',
          date: 'April 15, 2024',
          location: 'Tech Park Convention Center',
        ),
        _buildEventCard(
          title: 'Investor Meetup',
          date: 'May 3, 2024',
          location: 'Downtown Business Center',
        ),
        // Add more event cards as needed
      ],
    );
  }

  Widget _buildNewsCard({required String title, required String content}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              content,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStartupCard(
      {required String name, required String description}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventCard(
      {required String title, required String date, required String location}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Date: $date',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Location: $location',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
