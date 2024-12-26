import 'package:flutter/material.dart';

void main() {
  runApp(WidgetApp());
}

class WidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Common Widgets Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Arial',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Showcase'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple[100]!, Colors.purple[50]!],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Displaying an image with rounded corners
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://images.pexels.com/photos/248280/pexels-photo-248280.jpeg', // Image of a dog
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              // Row with redesigned icons and text
              Card(
                elevation: 5,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomIconWidget(
                        icon: Icons.home,
                        label: 'Home',
                        color: Colors.purple,
                      ),
                      CustomIconWidget(
                        icon: Icons.star,
                        label: 'Favorite',
                        color: Colors.amber,
                      ),
                      CustomIconWidget(
                        icon: Icons.person,
                        label: 'Profile',
                        color: Colors.teal,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              // Elevated button with rounded corners
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  print('Button Pressed');
                },
                child: Text(
                  'Tap Here',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const CustomIconWidget({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50,
          color: color,
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
