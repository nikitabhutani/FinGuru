import 'package:finguru/common/homepages/afterloginpage.dart';
import 'package:finguru/common/homepages/widgets/success_stories.dart';
import 'package:finguru/common/homepages/widgets/testimonials.dart';
import 'package:finguru/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FinGuru'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Choose an Option'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(
                            onPressed: () => Get.to(() => LoginScreen()),
                            child: Text('LogIn'),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () => Get.to(() => LoginScreen()),
                            child: Text('SignUp'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text('Get Started'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1B5E20), Color(0xFF43A047)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Empowering Women Entrepreneurs',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Connect, Grow, Succeed',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/finguru_logo.jpg',
                    width: 100,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            FeatureSection(
              title: 'Our Features',
              features: [
                FeatureCard(
                  title: 'Connect with fellow startup founders',
                  description:
                      'Join a community of like-minded women entrepreneurs to share experiences and network.',
                  gradient: LinearGradient(
                    colors: [Color(0xFF66BB6A), Color(0xFF43A047)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                FeatureCard(
                  title: 'Access to women incubation centers',
                  description:
                      'Find incubation centers specifically designed to support and nurture women-led startups.',
                  gradient: LinearGradient(
                    colors: [Color(0xFF4CAF50), Color(0xFF2E7D32)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                FeatureCard(
                  title: 'Resources for startup journey',
                  description:
                      'Access resources, mentorship programs, and funding opportunities to kickstart your startup journey.',
                  gradient: LinearGradient(
                    colors: [Color(0xFF43A047), Color(0xFF1B5E20)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                FeatureCard(
                  title: 'Goal setting and tracking',
                  description:
                      'Set goals for your startup and track your progress with our intuitive goal tracking system.',
                  gradient: LinearGradient(
                    colors: [Color(0xFF66BB6A), Color(0xFF1B5E20)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SectionHeading(
                title: 'Testimonials',
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TestimonialsWidget(),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SectionHeading(
                title: 'Success Stories',
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SuccessStoriesWidget(),
            ),
            SizedBox(height: 20),
            ContactDetails(),
          ],
        ),
      ),
    );
  }
}

class FeatureSection extends StatelessWidget {
  final String title;
  final List<Widget> features;

  const FeatureSection({
    Key? key,
    required this.title,
    required this.features,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        GridView.count(
          crossAxisCount: 4, // Adjust the cross-axis count as needed
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: features,
        ),
      ],
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final Gradient gradient;

  const FeatureCard({
    Key? key,
    required this.title,
    required this.description,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Contact Us',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'For any queries, feedback, or partnership opportunities, feel free to contact us!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Email: info@finguru.com\nPhone: +1234567890\nAddress: 123 Main Street, City, Country',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
