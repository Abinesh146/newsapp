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
        title: Center(child: Text("Indiaretaling.com")),
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
                height: 120,
                child: Column(
                  children: [
                    // First Row with Image and Text
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ClipRect(
                            child: Container(
                              color: Colors.grey[300], // Placeholder color
                              width: 90,
                              height: 90,
                              child: Center(
                                child: Text(
                                  'Image', // Placeholder for image
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
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
                        ClipRect(
                          child: Container(
                            color: Colors.grey[300], // Placeholder color
                            width: 90,
                            height: 90,
                            child: Center(
                              child: Image.network(
                                'assets/images/newsimage.jpg', // Replace with your image URL
                                fit: BoxFit.cover, // Scale the image to cover the entire area
                                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                  return Center(
                                    child: Text(
                                      'Image not available', // Text to display if the image fails to load
                                      style: TextStyle(color: Colors.black54),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            // ClipRect for the image container before the ListView
            ClipRect(
              child: Container(
                color: Colors.grey[300], // Placeholder color
                width: 350,
                height: 250,
                child: Center(
                  child: Text(
                    'Image', // Placeholder for image
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Main section for news articles
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: [

                  SizedBox(width: 16), // Space between the star and text
                  Text(
                    'Heading',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),


            // ListView displaying news articles and ads
            Container(
              height: 500,
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  newsArticle('Breaking News: Flutter is awesome!'),
                  newsArticle('Top 10 tips for coding in Dart'),
                  newsArticle('How to master mobile app development'),
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
                itemCount: 2, // Number of ad images
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        width: 300, // Width of each container
                        color: Colors.grey[300], // Placeholder for ad image
                        child: Center(
                          child: Text(
                            'Ad ${index + 1}', // Placeholder for ad
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20), Container(
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
            ),SizedBox(height: 20),Center(
              child: Text(
                '- Adverticement -',
                style: TextStyle(
                  fontSize: 15, // Change font size to smaller

                ),
              ),
            ),

            ClipRect(
              child: Container(
                color: Colors.grey[300], // Placeholder color
                width: 300,
                height: 130,
                child: Center(
                  child: Text(
                    'Image', // Placeholder for image
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),SizedBox(height: 30),
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
          child: Column( // Change Row to Column
            crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
            children: [
              // Main title
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10), // Space between title and subtitle
              // Subtitle text
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


  // Widget to display a news article with both text and an image
  Widget newsArticle(String title) {
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
              ClipRect(
                child: Container(
                  color: Colors.grey[300], // Placeholder color
                  width: 100,
                  height: 100,
                  child: Center(
                    child: Text(
                      'Image', // Placeholder for image
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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


  // Widget to display an ad banner
  Widget adBanner(String adUrl) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
        child: Column(
          children: [
            Text(
              'Sponsored',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
              child: Image.network(adUrl, fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
