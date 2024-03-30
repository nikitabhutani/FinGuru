import 'package:flutter/material.dart';

// EventWorkshop model
class EventWorkshop {
  final String title;
  final String date;
  final String location;
  final String description;

  EventWorkshop({
    required this.title,
    required this.date,
    required this.location,
    required this.description,
  });
}

// EventsWorkshopsWidget
class EventsWorkshopsWidget extends StatelessWidget {
  final List<EventWorkshop> eventsWorkshops = [
    EventWorkshop(
      title: 'Startup Bootcamp',
      date: 'April 15, 2024',
      location: 'Virtual Event',
      description:
          'Join our intensive startup bootcamp to learn essential skills and strategies for launching your business.',
    ),
    EventWorkshop(
      title: 'Women in Tech Conference',
      date: 'May 20-22, 2024',
      location: 'City Convention Center',
      description:
          'Attend the largest conference for women in tech featuring inspiring keynotes, panel discussions, and networking opportunities.',
    ),
    EventWorkshop(
      title: 'Tech Startup Workshop',
      date: 'June 5, 2024',
      location: 'Tech Hub',
      description:
          'Learn about the latest trends in tech startups and get expert advice on building and scaling your venture.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: eventsWorkshops.map((event) {
              return Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: EventWorkshopItem(event: event),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

// EventWorkshopItem widget
class EventWorkshopItem extends StatelessWidget {
  final EventWorkshop event;

  const EventWorkshopItem({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            event.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Date: ${event.date}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          Text(
            'Location: ${event.location}',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 4),
          Text(
            event.description,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

