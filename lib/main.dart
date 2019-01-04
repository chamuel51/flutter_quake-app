
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main (){

  runApp(new MaterialApp(
    home:new Scaffold(
      appBar: new AppBar(

        title: new Text('Quake-app'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,


      ),
      body: new Center(
        
        child: new ListView.builder(itemBuilder: null),
      ),
    )
  ));


}

