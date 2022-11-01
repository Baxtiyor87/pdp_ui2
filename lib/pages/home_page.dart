import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem =[
    'assets/images/apple_2.png',
    'assets/images/apple_9.jpg',
    'assets/images/apple_11.webp',
    'assets/images/apple_6.jpg',
    'assets/images/apple_2.png',
    'assets/images/apple_9.jpg',
    'assets/images/apple_11.webp',
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
        elevation: 0,
        actions:  [
          Padding(
              padding: const EdgeInsets.all(10),
          child: Container(
            width: 36,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text('7', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            ),
          ),)
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // #header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(image: AssetImage('assets/images/apple_12.jpg'),
                fit: BoxFit.cover)
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.orange.withOpacity(.3),
                        Colors.orange.withOpacity(.01)
                      ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Lifestyle sale', style: TextStyle(color: Colors.white,fontSize: 35),
                      ),
                      const SizedBox(height: 30,),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Center(
                          child: Text('Shop Now', style: TextStyle(color: Colors.grey.shade800),),
                        ),
                      ),
                      const SizedBox(height: 30,)
                    ],
                ),
              ),
            ),
            const SizedBox(height: 18,),
            // #body
            Expanded(
                child: GridView.count(
                   crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _listItem.map((item) => cellOfList(item)).toList(),)
            ),
          ],
        ),

      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(item),
          fit: BoxFit.cover)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(Icons.favorite, color: Colors.red,size: 35,)
          ],
        ),
      ),
    );
  }
}
