import 'package:flutter/material.dart';
import 'package:nimeflix/ui/anime_detail.dart';

class AnimeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AnimeDetail())),
        borderRadius: BorderRadius.circular(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _thumbImage(),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(),
                  SizedBox(height: 5.0,),
                  _genreList(),
                  SizedBox(height: 5.0,),
                  _rating(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _thumbImage() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('assets/img/1.jpg'),
          fit: BoxFit.cover
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      'Persona 4',
      style: TextStyle(color: Colors.white, fontSize: 18),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }

  Widget _genreList() {
    return Text(
      'Action, Misteri, Comedy', 
      overflow: TextOverflow.ellipsis, 
      style: TextStyle(color: Colors.white38, fontSize: 12),
    );
  }

  Widget _rating() {
    return Row(
      children: [
      Icon(Icons.star, color: Colors.yellow, size: 15,),
      SizedBox(width: 5,),
      Text("4.8/5.0", style: TextStyle(color: Colors.white38, fontSize: 12),)
      ],
    );
  }


}