import 'package:flutter/material.dart';

// Incubation Center data model
class IncubationCenter {
  final String name;
  final String location;
  final String description;

  IncubationCenter({
    required this.name,
    required this.location,
    required this.description,
  });
}

// Incubation Center page
class IncubationCentersPage extends StatelessWidget {
  // Sample data for Incubation Centers
  final List<IncubationCenter> centers = [
    IncubationCenter(
      name: 'TechHub Incubator',
      location: 'Delhi, India',
      description:
          'TechHub Incubator provides a collaborative environment and resources for tech startups to grow and succeed.',
    ),
    IncubationCenter(
      name: 'InnovationLab',
      location: 'Kolkata, India',
      description:
          'InnovationLab offers state-of-the-art facilities and mentorship programs for innovative startups across various industries.',
    ),
    IncubationCenter(
      name: 'StartupHub',
      location: 'Mumbai,India',
      description:
          'StartupHub supports early-stage startups with funding, mentorship, and access to a global network of investors and experts.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incubation Centers'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 40, 134, 44),
        child: ListView.builder(
          itemCount: centers.length,
          itemBuilder: (context, index) {
            return IncubationCenterItem(center: centers[index]);
          },
        ),
      ),
    );
  }
}

// Incubation Center item widget
class IncubationCenterItem extends StatelessWidget {
  final IncubationCenter center;

  const IncubationCenterItem({
    Key? key,
    required this.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              center.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Location: ${center.location}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 8),
            Text(
              center.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
