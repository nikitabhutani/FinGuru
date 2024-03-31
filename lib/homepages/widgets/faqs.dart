import 'package:flutter/material.dart';

class FAQsWidget extends StatelessWidget {
  final List<FAQ> faqs = [
    FAQ(
      question: 'What is FinGuru?',
      answer:
          'FinGuru is a platform designed to empower women entrepreneurs by providing resources, networking opportunities, and support tailored to their needs.',
    ),
    FAQ(
      question: 'How can I join FinGuru?',
      answer:
          'You can join FinGuru by signing up for an account on our website or through our mobile app. Membership is free and open to all women entrepreneurs.',
    ),
    FAQ(
      question: 'Are there any membership fees?',
      answer:
          'No, membership is completely free for all women entrepreneurs. There are no hidden fees or charges.',
    ),
    FAQ(
      question: 'How can I access resources on FinGuru?',
      answer:
          'Once you sign up and log in to your account, you will have access to a wide range of resources, including articles, guides, webinars, and networking events.',
    ),
    FAQ(
      question: 'Can I contribute content to FinGuru?',
      answer:
          'Yes, we welcome contributions from our members. If you have valuable insights, tips, or experiences to share, you can submit content through our platform.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      itemCount: faqs.length,
      itemBuilder: (context, index) {
        return FAQItem(faq: faqs[index]);
      },
    );
  }
}

class FAQItem extends StatelessWidget {
  final FAQ faq;

  const FAQItem({
    Key? key,
    required this.faq,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            faq.question,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            faq.answer,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class FAQ {
  final String question;
  final String answer;

  FAQ({
    required this.question,
    required this.answer,
  });
}
