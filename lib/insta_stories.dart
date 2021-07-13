import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Text("Stories", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Icon(Icons.play_arrow),
            ),
            Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      )
    ],
  );

  final stories = Expanded(
      child: new ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 50,
    itemBuilder: (context, index) => new Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        new Container(
          width: 60,
          height: 60,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://www.cheatsheet.com/wp-content/uploads/2020/11/Marvel-star-Robert-Downey-Jr-1024x692.jpg"))),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
        ),
        index == 0
            ? Positioned(
                right: 10.0,
                child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 10.0,
                    child: new Icon(
                      Icons.add,
                      size: 14.0,
                      color: Colors.white,
                    )),
              )
            : new Container(),
      ],
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
