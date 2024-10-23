import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News & Ads',
      home: MyHomePage(title: 'News Headlines'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Image.asset(
            'images/indiaretail-logo-23 1.png', // Path to your asset image
            height: 40, // Set height according to your design
            fit: BoxFit.contain, // Ensure the image fits well in the space
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Search function goes here
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // ClipRect to enhance visual design for a welcome message
            ClipRect(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    // First Row with Image and Text
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                      child: Row(
                        children: [
                          // First row item
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ClipRect(
                              child: Container(
                                color: Colors.grey[300], // Placeholder background color
                                width: 80,
                                height: 65,
                                child: Center(
                                  child: Image.asset(
                                    'images/Link ⏵ news4.jpg (1).png', // Replace with your asset image path
                                    fit: BoxFit.cover, // Ensures the image covers the container
                                    errorBuilder: (context, error, stackTrace) {
                                      return Center(
                                        child: Text(
                                          'Image not available', // Fallback text if the image fails to load
                                          style: TextStyle(color: Colors.black54),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Wrap this `Expanded` inside a `SizedBox` or `Container` to avoid layout issues.
                          SizedBox(
                            width: 250, // Define a fixed width for Expanded
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'HotSports',
                                    style: TextStyle(
                                      fontSize: 15, // Font size for heading
                                      color: Colors.orange, // Orange color for heading
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 4), // Spacing between the texts
                                  Text(
                                    'Stay updated with the latest news and advertisements.',
                                    style: TextStyle(
                                      fontSize: 16, // Smaller font size for description
                                      color: Colors.black,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Second row item (duplicate or new)
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ClipRect(
                              child: Container(
                                color: Colors.grey[300], // Placeholder background color
                                width: 80,
                                height: 65,
                                child: Center(
                                  child: Image.asset(
                                    'images/news_image2.jpg', // Replace with your asset image path
                                    fit: BoxFit.cover, // Ensures the image covers the container
                                    errorBuilder: (context, error, stackTrace) {
                                      return Center(
                                        child: Text(
                                          'Image not available', // Fallback text if the image fails to load
                                          style: TextStyle(color: Colors.black54),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Wrap this `Expanded` inside a `SizedBox` or `Container` to avoid layout issues.
                          SizedBox(
                            width: 250, // Define a fixed width for Expanded
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'HotSports',
                                    style: TextStyle(
                                      fontSize: 15, // Font size for heading
                                      color: Colors.orange, // Orange color for heading
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 4), // Spacing between the texts
                                  Text(
                                    'Stay updated with the latest news and advertisements.',
                                    style: TextStyle(
                                      fontSize: 16, // Smaller font size for description
                                      color: Colors.black,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),  Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ClipRect(
                              child: Container(
                                color: Colors.grey[300], // Placeholder background color
                                width: 80,
                                height: 65,
                                child: Center(
                                  child: Image.asset(
                                    'images/news_image2.jpg', // Replace with your asset image path
                                    fit: BoxFit.cover, // Ensures the image covers the container
                                    errorBuilder: (context, error, stackTrace) {
                                      return Center(
                                        child: Text(
                                          'Image not available', // Fallback text if the image fails to load
                                          style: TextStyle(color: Colors.black54),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Wrap this `Expanded` inside a `SizedBox` or `Container` to avoid layout issues.
                          SizedBox(
                            width: 250, // Define a fixed width for Expanded
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'HotSports',
                                    style: TextStyle(
                                      fontSize: 15, // Font size for heading
                                      color: Colors.orange, // Orange color for heading
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 4), // Spacing between the texts
                                  Text(
                                    'Stay updated with the latest news and advertisements.',
                                    style: TextStyle(
                                      fontSize: 16, // Smaller font size for description
                                      color: Colors.black,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            // ClipRect for the image container before the ListView
            ClipRect(
              child: Container(
                color: Colors.grey[300],
                width: 340,
                height: 200,
                child: Image.asset(
                  'images/news_image.jpg',
                  fit: BoxFit.contain, // Ensures the whole image fits within the container
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Text(
                        'Image failed to load',
                        style: TextStyle(color: Colors.black54),
                      ),
                    );
                  },
                ),
              ),
            ),

            SizedBox(height: 5),

            // Main section for news articles
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [
                  SizedBox(width: 20), // Space between the star and text
                  Text(
                    'Rahul Gandhi in manipure',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // ListView displaying news articles and ads
            // Set a fixed height for ListView inside SingleChildScrollView to avoid scroll conflict
            Container(
              height: 500,
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Disables ListView's internal scrolling
                children: [
                  newsArticle('Breaking News: Flutter is awesome!', 'images/image 34 (1).png'),
                  newsArticle('Top 10 tips for coding in Dart', 'images/image 34.png'),
                  newsArticle('How to master mobile app development', 'images/image 34 (2).png'),
                ],
              ),
            ),

            // Heading for advertisement section
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star, // Using the star icon
                    color: Colors.orange, // Star color
                    size: 28, // Size of the star
                  ),
                  SizedBox(width: 8), // Space between the star and text
                  Text(
                    'Latest News',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // GridView for advertisement images
            Container(
              height: 200, // Set a fixed height for the horizontal ListView
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Scroll horizontally
                itemCount: 3, // Number of ad images
                itemBuilder: (BuildContext context, int index) {
                  // List of asset image paths
                  List<String> adImages = [
                    'images/Link ⏵ newsimage8.png.png', // Path for the first ad image
                    'images//Link ⏵ newsimage8.png.png', // Path for the second ad image
                    'images//Link ⏵ newsimage8.png.png', // Path for the third ad image
                  ];

                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: 260, // Width of each container
                        color: Colors.grey[300], // Placeholder background color
                        child: Center(
                          child: Image.asset(
                            adImages[index], // Use the corresponding image path
                            fit: BoxFit.cover, // Ensure the image covers the container
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                child: Text(
                                  'Image not available', // Fallback text if the image fails to load
                                  style: TextStyle(color: Colors.black54),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),

            // Additional news section
            Container(
              height: 400,
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  newsArticle1('Breaking News: Flutter is awesome!', 'This is a brief description of the breaking news.'),
                  newsArticle1('Top 10 tips for coding in Dart', 'Learn how to improve your Dart programming skills.'),
                  newsArticle1('How to master mobile app development', 'Steps and resources to become a master mobile developer.'),
                ],
              ),
            ),

            SizedBox(height: 20),
            Center(
              child: Text(
                '- Advertisement -',
                style: TextStyle(
                  fontSize: 15, // Change font size to smaller
                ),
              ),
            ),

            ClipRect(
              child: Container(
                color: Colors.grey[300], // Placeholder color
                width: 320,
                height: 100,
                child: Center(
                  child: Image.asset(
                    'images/image 155.png', // Path to your asset image
                    fit: BoxFit.cover, // Ensure the image covers the container
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Text(
                          'Image not available', // Fallback text if the image fails to load
                          style: TextStyle(color: Colors.black54),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget newsArticle1(String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10), // Space between title and subtitle
              Text(
                subtitle, // New subtitle parameter
                style: TextStyle(fontSize: 14, color: Colors.grey), // Subtitle style
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget newsArticle(String title, String imagePath) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12), // Rounded corners for the image
                child: Container(
                  color: Colors.grey[300], // Placeholder background color
                  width: 130,
                  height: 80,
                  child: Image.asset(
                    imagePath, // Use the passed image path
                    fit: BoxFit.cover, // Make sure the image covers the container
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Text(
                          'Image not available', // Fallback text if the image fails to load
                          style: TextStyle(color: Colors.black54),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
