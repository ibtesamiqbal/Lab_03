// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(PatternApp());
}

class PatternApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pattern Lab #3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // Title at the top
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'LAB # 3',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              // Upper Container with Image
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.red,
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://images.pexels.com/photos/248280/pexels-photo-248280.jpeg', // Image of a dog
                      height: 100,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Overlapping containers
              Stack(
                alignment: Alignment.center,
                children: [
                  // Blue rectangle
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.blue,
                  ),
                  // Green overlapping rectangle
                  Positioned(
                    top: 20,
                    left: 60,
                    child: Container(
                      height: 60,
                      width: 60,
                      color: Colors.green,
                    ),
                  ),
                  // Red vertical container with numbers
                  Positioned(
                    left: 100,
                    child: Container(
                      height: 200,
                      width: 50,
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 1; i <= 9; i++)
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '$i',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Bottom text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'PRACTICE MORE THEN THIS. IT WILL HELP YOU TO DESIGN COMPLEX MOBILE APP DESIGN',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 20),
              // Bottom leading and trailing images
              Container(
                color: Colors.green,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text(
                            'LEADING',
                            style: TextStyle(color: Colors.white),
                          ),
                    // Leading image
                    Padding(
                      
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         
                          ClipOval(
                            
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 150.0), // Adjust padding if necessary
                              child: Image.network(
                                'https://images.pexels.com/photos/355539/pexels-photo-355539.jpeg', // Nature image
                                
                                height: 60,
                                width: 60,
                                
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         
                          Text(
                            'TRAILING',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}