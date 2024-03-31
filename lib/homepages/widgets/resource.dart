import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourceLinksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        ResourceLinkItem(
          title: 'Startup Funding Guide',
          url: 'https://www.fundable.com/learn/resources/guides/startup',
        ),
        ResourceLinkItem(
          title: 'Marketing Strategies for Startups',
          url:
              'https://www.thehartford.com/business-insurance/strategy/startup/marketing',
        ),
        // Add more ResourceLinkItems as needed
      ],
    );
  }
}

class ResourceLinkItem extends StatelessWidget {
  final String title;
  final String url;

  const ResourceLinkItem({
    Key? key,
    required this.title,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(
                255, 99, 250, 255), // You can change the color as needed
          ),
        ),
      ),
    );
  }
}
