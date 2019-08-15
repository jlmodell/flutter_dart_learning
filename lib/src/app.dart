import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/image_model.dart';
import 'models/artsy_model.dart';
import 'widgets/image_list.dart';
import 'dart:convert';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ArtsyModel> images = [];

  void fetchImage() async {
    final String artist = "andy-warhol";

    final headers = {
      "X-Xapp-Token":
          "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJyb2xlcyI6IiIsImV4cCI6MTU2NjQ3MzU5OCwiaWF0IjoxNTY1ODY4Nzk4LCJhdWQiOiI1ZDU1NDJmZGM0N2QxODAwMTJlNTAwNmUiLCJpc3MiOiJHcmF2aXR5IiwianRpIjoiNWQ1NTQyZmU2OTc4ZjIwMDBlNDlhYTI0In0.Y4ABCscpmhl3bp9R_-u9HaOH2I1kQ_a6FoOrXCYHEAM"
    };

    final String url = "https://api.artsy.net/api/artists/$artist";

    // final res =
    //     await get('https://jsonplaceholder.typicode.com/photos/$counter');

    var response = await http.get(url, headers: headers);

    final artsyModel = ArtsyModel.fromJson(json.decode(response.body));

    // final imageModel = ImageModel.fromJson(json.decode(res.body));
    setState(() {
      images.add(artsyModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text("Learning Flutter"),
        ),
      ),
    );
  }
}
