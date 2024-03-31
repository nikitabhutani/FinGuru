import 'package:flutter/material.dart';

class TestimonialsWidget extends StatelessWidget {
  final List<Testimonial> testimonials = [
    Testimonial(
      name: 'Shreya Aggarwal',
      company: 'ABC Startup',
      testimonial:
          'FinGuru has been an invaluable resource for our startup. The support and guidance we received helped us navigate through various challenges and achieve our goals.',
    ),
    Testimonial(
      name: 'Smita Marwaha',
      company: 'XYZ Ventures',
      testimonial:
          'I highly recommend FinGuru to any aspiring women entrepreneur. The platform provides access to a wealth of resources and a supportive community.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Adjust the height as needed
      child: ListView.builder(
        itemCount: testimonials.length,
        itemBuilder: (context, index) {
          return TestimonialItem(testimonial: testimonials[index]);
        },
      ),
    );
  }
}

class TestimonialItem extends StatelessWidget {
  final Testimonial testimonial;

  const TestimonialItem({
    Key? key,
    required this.testimonial,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\"${testimonial.testimonial}\"',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '- ${testimonial.name}, ${testimonial.company}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Testimonial {
  final String name;
  final String company;
  final String testimonial;

  Testimonial({
    required this.name,
    required this.company,
    required this.testimonial,
  });
}
