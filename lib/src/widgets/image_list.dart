import "package:flutter/material.dart";
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            padding: EdgeInsets.all(15.0),
            child: Image.network(image.url),
          ),
          Padding(
            child: Text(image.title),
            padding: EdgeInsets.only(top: 15.0),
          )
        ],
      ),
    );
  }
}
