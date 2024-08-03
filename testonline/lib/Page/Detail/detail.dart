import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Image.network('https://via.placeholder.com/300',
                height: 200, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              'Dreamsville House',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('JL Sultan Iskandar Muda, Jakarta Selatan'),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.king_bed),
                SizedBox(width: 4),
                Text('6 Bedroom'),
                SizedBox(width: 16),
                Icon(Icons.bathtub),
                SizedBox(width: 4),
                Text('4 Bathroom'),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars...',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 8),
            TextButton(onPressed: () {}, child: Text('Show More')),
            SizedBox(height: 16),
            Row(
              children: [
                CircleAvatar(),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Garry Allen',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Owner', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Spacer(),
                IconButton(icon: Icon(Icons.call), onPressed: () {}),
                IconButton(icon: Icon(Icons.message), onPressed: () {}),
                IconButton(icon: Icon(Icons.videocam), onPressed: () {}),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Gallery',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GalleryImage(),
                  GalleryImage(),
                  GalleryImage(),
                  GalleryImage(),
                  GalleryImage(),
                  GalleryImage(),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Price',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Rp. 2.500.000.000 / Year',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Rent Now'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GalleryImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Image.network('https://via.placeholder.com/100',
          width: 100, height: 100, fit: BoxFit.cover),
    );
  }
}
