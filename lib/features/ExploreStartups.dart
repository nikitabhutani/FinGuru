import 'package:flutter/material.dart';

class Startup {
  final String name;
  final String description;
  final String imageUrl;

  Startup({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

class ExploreStartupsPage extends StatelessWidget {
  final List<Startup> startups = [
    Startup(
      name: 'Tech Innovations Inc.',
      description: 'Revolutionizing AI technology.',
      imageUrl: 'assets/images/woman_startup.png',
    ),
    Startup(
      name: 'GreenTech Solutions',
      description: 'Leading the way in sustainable tech.',
      imageUrl: 'assets/images/schemes.png',
    ),
    // Add more startups as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Startups'),
        backgroundColor: Colors.green[900],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.green[900]!],
          ),
        ),
        child: ListView.builder(
          itemCount: startups.length,
          itemBuilder: (context, index) {
            return _buildStartupCard(startups[index]);
          },
        ),
      ),
    );
  }

  Widget _buildStartupCard(Startup startup) {
    return Card(
      color: Colors.white,
      elevation: 3,
      margin: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              startup.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              startup.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            // Add more details like image here if needed
          ],
        ),
      ),
    );
  }
}
