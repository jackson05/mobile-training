import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Travel Map'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double latitude = 0;

  void drawShape() {
    setState(() {
      latitude++;
    });
  }

  void cleanShape(){
    setState(() {
      -latitude--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: const [
            Text('Loading...'),
            SizedBox(height: 16.0),
            CircularProgressIndicator(
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
            ),
          ],

        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
           BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label:'Search'),

          BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined),
              label:'Call'),

          BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label:'Video Call'),

        ],
        currentIndex: 0,

      ),

    );

  }
}
