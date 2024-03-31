import 'package:flutter/material.dart';

class GovernmentSchemesPage extends StatelessWidget {
  final List<GovernmentScheme> schemes = [
    GovernmentScheme(
      name: 'Startup India',
      description:
          'Startup India is a flagship initiative of the Government of India, intended to build a strong eco-system for nurturing innovation and startups in the country.',
      eligibility: 'Indian citizens with innovative business ideas.',
      benefits:
          'Funding support, tax benefits, self-certification compliance, incubation facilities, and more.',
    ),
    GovernmentScheme(
      name: 'Stand-Up India',
      description:
          'Stand-Up India is a scheme aimed at promoting entrepreneurship among women, Scheduled Castes (SC), and Scheduled Tribes (ST) by providing loans for setting up greenfield enterprises.',
      eligibility: 'Women entrepreneurs, SCs, and STs.',
      benefits:
          'Composite loan between Rs. 10 lakhs and Rs. 1 crore, lower interest rates, and collateral-free loans.',
    ),
    GovernmentScheme(
      name: 'MUDRA Yojana',
      description:
          'MUDRA Yojana aims to provide funding to non-corporate, non-farm small/micro-enterprises through various financial institutions for income-generating activities.',
      eligibility: 'Micro, small, and medium-sized enterprises (MSMEs).',
      benefits:
          'Loans up to Rs. 10 lakhs, no collateral required, flexible repayment terms.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Government Schemes'),
        backgroundColor: Colors.green[900],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green[900]!, Colors.black],
          ),
        ),
        child: ListView.builder(
          itemCount: schemes.length,
          itemBuilder: (context, index) {
            return GovernmentSchemeCard(scheme: schemes[index]);
          },
        ),
      ),
    );
  }
}

class GovernmentSchemeCard extends StatelessWidget {
  final GovernmentScheme scheme;

  const GovernmentSchemeCard({
    Key? key,
    required this.scheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              scheme.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              scheme.description,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              'Eligibility: ${scheme.eligibility}',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(
              'Benefits: ${scheme.benefits}',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class GovernmentScheme {
  final String name;
  final String description;
  final String eligibility;
  final String benefits;

  GovernmentScheme({
    required this.name,
    required this.description,
    required this.eligibility,
    required this.benefits,
  });
}
