import 'package:flutter/material.dart';

Widget brandName(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
    Text("Wallpaper", style: TextStyle(color: Colors.black87),),
    Text("Hub", style: TextStyle(color: Colors.white),)
  ],);
}