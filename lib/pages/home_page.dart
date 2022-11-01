import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem =[
    'assets/images/apple_11.webp',
    'assets/images/apple_9.jpg',
    'assets/images/apple_7.png',
    'assets/images/apple_6.jpg',
    'assets/images/apple_11.webp',
    'assets/images/apple_9.jpg',
    'assets/images/apple_7.png',
    'assets/images/apple_6.jpg',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('Apple Products'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        actions:  [
          Padding(
              padding: EdgeInsets.all(10),
          child: Container(
            width: 36,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('8', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),)
        ],
      ),
    );
  }
}
