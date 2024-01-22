import 'package:flutter/material.dart';

class HomeFragmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clone App'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle('Trending'),
            _buildCard(
              'Kids Wear - Girls',
              'Summer tShirts',
              'https://m.media-amazon.com/images/I/618Gm-Q+zHL._AC_UL320_.jpg',
              '4.9',
            ),
            _buildTitle('New Collections'),
            _buildCard(
              'Old Navy Girls Clothes',
              '',
              'https://www.oldnavy.gap.com/webcontent/0015/810/835/cn15810835.jpg',
              '',
            ),
            _buildTitle('Tags'),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                Chip(label: Text('Summer')),
                Chip(label: Text('Casual Fashion')),
                Chip(label: Text('Girls')),
                Chip(label: Text('Females')),
              ],
            ),
            _buildTitle('Favorites'),
            _buildCard(
              'Kids Dino 55HJ',
              '- Summer',
              'https://i5.walmartimages.com/asr/28e78d6c-4ce7-4a6e-9192-a916597c88e7_1.8e86f68b9b6e20908b6c015f0eb6628a.jpeg',
              '4.8',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildCard(
      String mainText, String subText, String imageUrl, String rating) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: InkWell(
        onTap: () {
          // Add navigation logic here.
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainText,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  if (subText.isNotEmpty)
                    Text(
                      subText,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  SizedBox(height: 16.0),
                  if (rating.isNotEmpty)
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Icon(
                            Icons.star,
                            color: i < double.parse(rating)
                                ? Colors.yellow
                                : Colors.grey,
                            size: 16.0,
                          ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
