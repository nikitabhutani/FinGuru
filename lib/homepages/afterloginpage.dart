import 'package:finguru/features/govt_schemes.dart';
import 'package:finguru/features/incubation_centres.dart';
import 'package:finguru/features/newsletter_signup.dart';
import 'package:finguru/features/startupjourney.dart';
import 'package:finguru/homepages/widgets/events.dart';
import 'package:finguru/homepages/widgets/faqs.dart';
import 'package:finguru/homepages/widgets/resource.dart';
import 'package:finguru/homepages/widgets/testimonials.dart';
import 'package:finguru/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AfterLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, Username'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to profile page
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Handle chat button pressed
        },
        label: Text('Chat with Startup Founders'),
        icon: Icon(Icons.chat),
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1B5E20), Color(0xFF43A047)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to FinGuru!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Empowering Women Entrepreneurs',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Explore Features',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Discover what FinGuru has to offer',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  FeatureCard(
                    title: 'Incubation Centres',
                    description:
                        'Discover incubation centers to nurture your startup.',
                    image: 'assets/images/woman_startup.png',
                    onTap: () => Get.to(() => IncubationCentersPage()),
                  ),
                  SizedBox(width: 20),
                  FeatureCard(
                      title: 'Startup Journey',
                      description:
                          'Navigate through your startup journey with ease.',
                      image: 'assets/images/path.png',
                      onTap: () => Get.to(() => StartupJourneyPage())),
                  SizedBox(width: 20),
                  FeatureCard(
                    title: 'Government Schemes',
                    description:
                        'Explore government schemes to support women founders.',
                    image: 'assets/images/schemes.png',
                    onTap: () => Get.to(() => GovernmentSchemesPage()),
                  ),
                ],
              ),

              // Add Success Stories Widget
              SizedBox(height: 20),
              SectionHeading(
                title: 'Resource Links',
                color: Colors.white,
              ),
              ResourceLinksWidget(),
              SizedBox(height: 20),
              SectionHeading(
                title: 'Events and Workshops',
                color: Colors.white,
              ),
              EventsWorkshopsWidget(),
              SizedBox(height: 20),
              SectionHeading(
                title: 'Community',
                color: Colors.white,
              ),
              // Add Community Widget
              SizedBox(height: 20),
              SectionHeading(
                title: 'FAQs',
                color: Colors.white,
              ),
              FAQsWidget(),
              // SizedBox(height: 20),
              // SectionHeading(
              //   title: 'Blog Feed',
              //   color: Colors.white,
              // ),
              // Add Blog Feed Widget
              SizedBox(height: 20),
              SectionHeading(
                title: 'Newsletter Signup',
                color: Colors.white,
                onTap: () => Get.to(() => NewsletterSignupPage()),
              ),
              //  NewsletterSignupPage(),
              SizedBox(height: 20),
              SectionHeading(
                title: 'Follow Us',
                color: Colors.white,
              ),
              // Add Social Media Integration Widget
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final VoidCallback? onTap;

  const FeatureCard({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(
                image,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionHeading extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback? onTap; // Add a VoidCallback onTap parameter

  const SectionHeading({
    Key? key,
    required this.title,
    required this.color,
    this.onTap, // Make onTap parameter optional
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Execute the onTap callback when tapped
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          SizedBox(height: 4),
          if (onTap !=
              null) // If onTap is provided, show "Click here to sign up for our weekly newsletter"
            Text(
              'Click here to sign up for our weekly newsletter',
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 94, 218, 255),
                decoration: TextDecoration.underline,
              ),
            ),
        ],
      ),
    );
  }
}
