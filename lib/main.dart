
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

void main () async{

  List _data = await getJson();

  print(_data[0]);
  runApp(new MaterialApp(
      home:new Scaffold(
        appBar: new AppBar(

          title: new Text('Quake-app'),
          centerTitle: true,
       backgroundColor: Colors.greenAccent,


        ),
        body: new Center(

//        child: new ListView.builder(
//            itemCount: _data.length * 2,
//            padding: const EdgeInsets.all(16.0),
////            itemBuilder: (BuildContext context, int position ){
////              if(position.isOdd) return new Divider();
////
////              final index = position ~/ 2;
////
////              return new ListTile(
////
////                title: new Text(
////                    "hello people"
////                ),
////              );
////            }
//
//
//
//        ),
        ),
      )
  ));


}

Future<List> getJson() async{

  String apiUrl = '[https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson]';

  http.Response response = await http.get(apiUrl);

  return json.decode(response.body);
}