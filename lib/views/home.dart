import 'package:flutter/material.dart';
import 'package:wallpaperhubapp/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: brandName(),
        elevation: 0.0,
      ),
      body: Container(child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color(0xfff5f8fd),
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 24),
            margin: EdgeInsets.symmetric(horizontal: 24),
          child: Row(children: const <Widget> [
            Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "search wallpaper",
                border: InputBorder.none
              ),
            ),
            ),
            Icon(Icons.search)
          ],),
          )
        ]
      ))
    );
  }
}

