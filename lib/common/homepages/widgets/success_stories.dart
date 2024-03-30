import 'package:flutter/material.dart';

class SuccessStoriesWidget extends StatelessWidget {
  final List<SuccessStory> successStories = [
    SuccessStory(
      title: 'From Idea to IPO: My Startup Journey',
      description:
          'Learn how Jane Doe turned her idea into a successful IPO with the help of FinGuru.',
      imageUrl: 'assets/images/schemes.png',
    ),
    SuccessStory(
      title: 'Breaking Barriers: A Woman Entrepreneur\'s Story',
      description:
          'Read about how Sarah Smith overcame obstacles and achieved success in the startup world.',
      imageUrl: 'assets/images/woman_startup.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: successStories.length,
        itemBuilder: (context, index) {
          return SuccessStoryItem(successStory: successStories[index]);
        },
      ),
    );
  }
}

class SuccessStoryItem extends StatelessWidget {
  final SuccessStory successStory;

  const SuccessStoryItem({
    Key? key,
    required this.successStory,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Adjust the width as needed
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.green.shade100, // Apply green shade
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                successStory.imageUrl,
                //width: double.infinity,
                fit: BoxFit.cover, // Ensure the entire image is visible
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  successStory.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  successStory.description,
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
    );
  }
}

class SuccessStory {
  final String title;
  final String description;
  final String imageUrl;

  SuccessStory({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
