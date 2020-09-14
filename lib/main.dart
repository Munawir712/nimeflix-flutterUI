import 'package:flutter/material.dart';
import 'package:nimeflix/ui/anime_detail.dart';
import 'package:nimeflix/ui/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nimeflix',
      routes: {
        '/aniDetail' : (context) => AnimeDetail(),
      },
      home: HomeScreen(),      
    );
  }
}
