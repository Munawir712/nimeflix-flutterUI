import 'package:flutter/material.dart';
import 'package:nimeflix/ui/anime_item.dart';

class Watch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: ()=> Navigator.pop(context)),
        title: Text('NIMEFLIX', style: TextStyle(color: Colors.cyan),),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){})
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/sc1.png'),
                    fit: BoxFit.cover
                  )
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(color: Colors.black26,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.skip_previous, size: 50, color: Colors.white),
                        Icon(Icons.play_arrow, size: 50, color: Colors.white),
                        Icon(Icons.skip_next, size: 50, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Persona 4 The Animation",
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "S1 : EP10",
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      OutlineButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        borderSide: BorderSide(color: Colors.cyan),
                        textColor: Colors.cyan,
                        child: Text('Next Episode'),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text(
                "Yuu Narukami moves to Inaba, a seemingly quiet and ordinary town, where he quickly befriends the clumsy transfer student Yousuke Hanamura, the energetic Chie Satonaka, and the beautiful heiress Yukiko Amagi. Shortly after Yuu's arrival, a chain of mysterious killings begin to occur on foggy days. At the same time, rumors about a strange television channel—dubbed the 'Midnight Channel'—spread like wildfire; when staring into their TV screen at midnight, a person may see their soul mate.",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Latest Watch',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
              SizedBox(height: 5,),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return AnimeItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}