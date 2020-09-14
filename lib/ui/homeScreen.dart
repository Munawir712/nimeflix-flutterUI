import 'package:flutter/material.dart';
import 'package:nimeflix/ui/anime_item.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  List imgList = [
    'assets/img/1.jpg',
    'assets/img/2.jpg',
    'assets/img/1.jpg',
    'assets/img/2.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[900],
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
        centerTitle: true,
        title: Text("NIMEFLIX", style: TextStyle(color: Colors.cyan),),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _carouseImage(),
              SizedBox(height: 30,),
              _textWidget('now playing'),
              SizedBox(height: 10),
              _nowPlay(),
              SizedBox(height: 10),
              _textWidget('upcoming'),
              SizedBox(height: 10),
              _upComingAnime(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _carouseImage() {
    return Column(
      children: [
        CarouselSlider(
          items: imgList.map((img) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover
                    )
                  ),
                );
              },
            );
          }).toList(), 
          options: CarouselOptions(
            initialPage: 0,
            height: MediaQuery.of(context).orientation == Orientation.portrait ? 150 : 250,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, _) {
              setState(() {
                _current = index;
              });
            }
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(
            imgList, (index, img) {
              return Container(
                width: 50,
                height: 6.0,
                margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _current == index ? Colors.cyan : Colors.white,
                ),
              );
            }
          ),
        ),
      ],
    );
  }

  Widget _textWidget(String text, ) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text.toUpperCase(), style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(
            width: 100,
            height: 30,
            child: OutlineButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)
              ),
              borderSide: BorderSide(color: Colors.cyan),
              textColor: Colors.cyan,
              child: Text('See All'),
            ),
          )
          // InkWell(
          //   onTap: (){},
          //   borderRadius: BorderRadius.circular(20),
          //   splashColor: Colors.cyan,
          //   child: Container(
          //     padding: EdgeInsets.all(5.0),
          //     alignment: Alignment.center,
          //     width: 130,
          //     decoration: BoxDecoration(
          //       border: Border.all(color: Colors.cyan,),
          //       borderRadius: BorderRadius.circular(20)
          //     ),
          //     child: Text('See All', style: TextStyle(color: Colors.cyan,),)
          //   ),
          // )
        ],
      ),
    );
  }

  Widget _nowPlay() {
    return Container(
      // color: Colors.black54,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder:(context, index) {
          return AnimeItem();
        } 
      ),
    );
  }

  Widget _upComingAnime() {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder:(context, index) {
          return AnimeItem();
        } 
      ),
    );
  }
}