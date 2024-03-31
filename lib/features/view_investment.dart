import 'package:flutter/material.dart';

class Investment {
  final String name;
  final String description;
  final double amountInvested;

  Investment({
    required this.name,
    required this.description,
    required this.amountInvested,
  });
}

class ViewInvestmentsPage extends StatelessWidget {
  final List<Investment> investments = [
    Investment(
      name: 'Tech Innovations Inc.',
      description: 'Revolutionizing AI technology.',
      amountInvested: 5000,
    ),
    Investment(
      name: 'GreenTech Solutions',
      description: 'Leading the way in sustainable tech.',
      amountInvested: 8000,
    ),
    // Add more investments as needed
  ];

  @override
  Widget build(BuildContext context) {
    double totalInvested = 0;

    // Calculate total amount invested
    for (var investment in investments) {
      totalInvested += investment.amountInvested;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('View Investments'),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: investments.length,
                itemBuilder: (context, index) {
                  return _buildInvestmentCard(investments[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Total Amount Invested: \$${totalInvested.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInvestmentCard(Investment investment) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(
          investment.name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 4),
            Text(
              investment.description,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 4),
            Text(
              'Amount Invested: \$${investment.amountInvested.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        onTap: () {
          // Add functionality to view details of the investment
        },
      ),
    );
  }
}
