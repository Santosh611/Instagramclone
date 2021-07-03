import 'package:flutter/material.dart';

class Instahome extends StatelessWidget {
  const Instahome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
        elevation: 1.0,
        leading: new Icon(Icons.camera_alt),
        title: SizedBox(height: 35.0,child: Center(child: Image.asset("assests/Logo.png"))),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:12.0),
            child: Icon(Icons.send),
          )
        ],
        ),
        body: new Container(),
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 50,
          child: BottomAppBar(child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(onPressed: (){}, icon: Icon(Icons.home )),
              new IconButton(onPressed: (){}, icon: Icon(Icons.search )),
              new IconButton(onPressed: (){}, icon: Icon(Icons.add_box )),
              new IconButton(onPressed: (){}, icon: Icon(Icons.favorite )),
              new IconButton(onPressed: (){}, icon: Icon(Icons.person )),
              
            ],
          ),) ,
        ),

      ),
    );
  }
}