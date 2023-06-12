import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Photo Gallery'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Welcome to My Photo Gallery!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(8),
                  ),
                ),
              ),
              Wrap(
                spacing: 7,
                runSpacing: 7,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 7),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 7),
                        Text('Photo 2'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 7),
                        Text('Photo 3'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 7),
                        Text('Photo 1'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 7),
                        Text('Photo 2'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showSnackbar(context, 'Clicked on photo!');
                    },
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.pexels.com/photos/36753/flower-purple-lical-blosso.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 7),
                        Text('Photo 3'),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text('Sample Photo 1'),
                    subtitle: Text('Category 1'),
                  ),
                  ListTile(
                    title: Text('Sample Photo 2'),
                    subtitle: Text('Category 2'),
                  ),
                  ListTile(
                    title: Text('Sample Photo 3'),
                    subtitle: Text('Category 3'),
                  ),
                  // Add more ListTile widgets for other photos
                ],
              ),
              IconButton(
                icon: Icon(Icons.cloud_upload),
                onPressed: () {
                  showSnackbar(context, 'Photos Uploaded Successfully!');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
