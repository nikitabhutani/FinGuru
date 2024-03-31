import 'package:timelines/timelines.dart';
import 'package:flutter/material.dart';

class StartupJourneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Journey'),
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Startup Journey',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: InteractiveStartupJourney(),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> journeyDescriptions = [
  // Description for 'Idea Generation'
  'The idea generation phase involves brainstorming and conceptualizing potential business ideas. Entrepreneurs identify problems or opportunities in the market and devise innovative solutions to address them. This stage encourages creativity and exploration, aiming to generate unique and viable business concepts.',

  // Description for 'Market Research'
  'Market research is crucial for understanding the target market, customer needs, and competitive landscape. Entrepreneurs gather data and analyze market trends to validate their business idea and identify potential customers. This phase helps in shaping the business strategy and identifying opportunities for growth.',

  // Description for 'Business Planning'
  'Business planning involves developing a comprehensive roadmap for the startup, outlining the mission, vision, goals, and strategies. Entrepreneurs create a detailed business plan covering aspects such as target market, product/service offering, marketing strategy, financial projections, and operational plan.',

  // Description for 'Funding'
  'Securing funding is essential for financing startup operations and growth. Entrepreneurs explore various funding options such as bootstrapping, venture capital, angel investors, crowdfunding, or loans. This stage involves preparing funding pitches, negotiating terms, and securing investment to support business activities.',

  // Description for 'Product Development'
  'Product development is the process of bringing the business idea to life by creating a prototype or minimum viable product (MVP). Entrepreneurs focus on designing, building, and testing the product to ensure it meets customer needs and delivers value. This stage may involve iterations and feedback gathering to refine the product.',

  // Description for 'Launch'
  'The launch phase marks the official introduction of the product or service to the market. Entrepreneurs implement marketing strategies to generate buzz and attract customers. This stage requires careful planning and execution to ensure a successful launch and establish a strong market presence.',

  // Description for 'Growth & Scaling'
  'Growth and scaling involve expanding the business operations and customer base. Entrepreneurs focus on increasing sales, expanding into new markets, and optimizing operations for efficiency. This phase requires strategic decision-making and resource allocation to sustain growth momentum.',

  // Description for 'Expansion'
  'Expansion involves diversifying business offerings or entering new markets to capitalize on growth opportunities. Entrepreneurs explore avenues for product/service expansion, geographic expansion, or strategic partnerships to enhance market reach and competitiveness. This stage aims to sustain long-term business growth and profitability.'
];

final List<String> journeySteps = [
  'Idea Generation',
  'Market Research',
  'Business Planning',
  'Funding',
  'Product Development',
  'Launch',
  'Growth & Scaling',
  'Expansion',
];

int currentStepIndex = 0;

class InteractiveStartupJourney extends StatefulWidget {
  @override
  _InteractiveStartupJourneyState createState() =>
      _InteractiveStartupJourneyState();
}

class _InteractiveStartupJourneyState extends State<InteractiveStartupJourney> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: journeySteps.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(journeySteps[index]),
                onTap: () {
                  setState(() {
                    currentStepIndex = index;
                  });
                },
                selected: currentStepIndex == index,
              );
            },
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Details for ${journeySteps[currentStepIndex]}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: JourneyStepDetails(
            stepName: journeySteps[currentStepIndex],
            description: journeyDescriptions[currentStepIndex],
          ),
        ),
      ],
    );
  }
}

class JourneyStepDetails extends StatelessWidget {
  final String stepName;
  final String description;

  const JourneyStepDetails({
    Key? key,
    required this.stepName,
    required this.description, // Add description parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.green[200]!, Colors.white],
        ),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step: $stepName',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    description, // Use the provided description
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tasks:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '1. Research\n2. Plan\n3. Execute',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Resources:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '1. Online courses\n2. Books\n3. Workshops',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  // "You are here" indicator
                  Text(
                    'You are here',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Custom widget for displaying the startup journey path
                  //StartupJourneyPath(),
                  Container(
                    height: 120,
                    alignment: Alignment.topCenter,
                    child: Timeline.tileBuilder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      theme: TimelineThemeData(
                        direction: Axis.horizontal,
                        connectorTheme:
                            ConnectorThemeData(space: 8.0, thickness: 2.0),
                      ),
                      builder: TimelineTileBuilder.connected(
                        connectionDirection: ConnectionDirection.before,
                        itemCount: 8,
                        itemExtentBuilder: (_, __) {
                          return (MediaQuery.of(context).size.width - 120) /
                              8.0;
                        },
                        oppositeContentsBuilder: (context, index) {
                          return Container();
                        },
                        contentsBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              journeySteps[index],
                            ),
                          );
                        },
                        indicatorBuilder: (_, index) {
                          if (index <= currentStepIndex) {
                            return DotIndicator(
                              size: 20.0,
                              color: Colors.green,
                            );
                          } else {
                            return OutlinedDotIndicator(
                              borderWidth: 4.0,
                              color: const Color.fromARGB(255, 53, 122, 55),
                            );
                          }
                        },
                        connectorBuilder: (_, index, type) {
                          if (index > 0) {
                            return SolidLineConnector(
                              color: const Color.fromARGB(255, 29, 73, 31),
                            );
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
