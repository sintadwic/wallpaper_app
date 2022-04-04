import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:wallpaperhubapp/data/data.dart';
import 'package:wallpaperhubapp/model/categories_model.dart';
import 'package:wallpaperhubapp/widgets/widget.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategorieModel> categories = [];

  @override
  void initState() {
    categories = getCategories();
    super.initState();
  }

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
          ),
          
          SizedBox(height: 16,),
          Container(
            height: 80,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
              itemCount: categories.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return CategoriesTile(
                  title: categories[index].categorieName!,
                  imgUrl: categories[index].imgUrl!,
                );
              }),
          )

        ]
      ))
    );
  }
}

class CategoriesTile extends StatelessWidget {
  
  late String imgUrl, title;
  CategoriesTile({required this.imgUrl, required this.title});
  
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(right: 4),
      child: Stack(children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
            child: Image.network(imgUrl, height: 50,width: 100, fit: BoxFit.cover,)),
        Container(
          color: Colors.black26,
          height: 50, width: 100,
          alignment: Alignment.center,
          child: Text(title,style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize:15),),)
      ],),
    );
  }
}

