import 'package:flutter/material.dart';
import 'package:nimeflix/ui/watch.dart';

class AnimeDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: _content(),
          ),
          _appBar()
        ],
      ),
    );
  }

  Widget _appBar() {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            Container(
              height: 24.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
            ),
            Container(
              height: 50,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, 
                    color: Colors.white,
                    ), 
                    onPressed: () => Navigator.pop(context)
                  ),
                  Text('NIMEFLIX', style: TextStyle(color: Colors.cyan, fontSize: 20),),
                  IconButton(
                    icon: Icon(Icons.search, color: Colors.white,), 
                    onPressed: (){}
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Widget _content() {
    return Builder(
        builder:(context) => Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _imageThumb(),
                Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios, 
                            color: Colors.white
                          ), 
                          onPressed: (){}
                        ),
                        Text('S1 : EP9', style: TextStyle(color: Colors.white),),
                        Spacer(flex: 1,),
                        Text('S1 : EP11', style: TextStyle(color: Colors.white),),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_forward_ios, 
                            color: Colors.white
                          ), 
                          onPressed: () {}
                        )
                      ],
                    ),
                  ),
                _contentHeader(),
                Divider(indent: 1, color: Colors.grey,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          '8.5',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ),
                        ),
                        SizedBox(height: 11,),
                        Text(
                          'Metascore',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){}, ),
                        Text(
                          '1M',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.star_border, color: Colors.yellow,), 
                          onPressed: (){}
                        ),
                        Text(
                          'Rate This',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(indent: 1, color: Colors.grey,),
                _synopsis(),
                Divider(indent: 1, color: Colors.grey),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Scenes',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 8.0),
                              // height: 160,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/img/sc1.png'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8.0),
                              // height: 160,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/img/sc3.png'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8.0),
                              // height: 160,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage('assets/img/sc4.png'),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            _buttonPlay(
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) => Watch()
              ))
            )
          ],
        ),
      ),
    );
  }

  Widget _contentHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: _title(), 
                width: 230, 
                // color: Colors.red,
              ),
              Flexible(
                child: Container(
                width: 130,
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "S1 : EP100",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                      Icon(Icons.star, color: Colors.yellow, size: 20,),
                      SizedBox(width: 5,),
                      Text("4.8/5.0", style: TextStyle(color: Colors.white, ),)
                      ],
                    ),
                  ],
                ),
              ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(
                "Studio : ",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                "AIC A.S.T.A",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.cyan,
                  fontSize: 20,
                ),
              ),
              Spacer(flex: 1,),
              OutlineButton(
                onPressed: (){},
                borderSide: BorderSide(color: Colors.red[400],),
                splashColor: Colors.red,
                highlightedBorderColor: Colors.red,
                textColor: Colors.red[400],
                child: Text('Add To Favorite'),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _synopsis() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Synopsis', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Yuu Narukami moves to Inaba, a seemingly quiet and ordinary town, where he quickly befriends the clumsy transfer student Yousuke Hanamura, the energetic Chie Satonaka, and the beautiful heiress Yukiko Amagi. ",
            style: TextStyle(
              color: Colors.white70,
            ),
          )
        ],
      ),
    );
  }

  Widget _buttonPlay({Function onPressed}) {
    return Builder(
          builder: (context) => Positioned(
        top: 170, left: 20, right: 20,  
        child: FloatingActionButton(
          onPressed: onPressed, 
          child: Icon(Icons.play_arrow),
        )
      ),
    );
  }

  Widget _imageThumb() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(85)),
        image: DecorationImage(
          image: AssetImage('assets/img/1.jpg'),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black26, 
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(85)
          ),
        ),
      ),
    );
  }

  Widget _title(){
    return Text(
      'Persona 4 The Animation',
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }


}