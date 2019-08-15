import "package:flutter/material.dart";
// import '../models/image_model.dart';
import '../models/artsy_model.dart';

// class ImageList extends StatelessWidget {
//   final List<ImageModel> images;

//   ImageList(this.images);

//   Widget build(context) {
//     return ListView.builder(
//       itemCount: images.length,
//       itemBuilder: (context, int index) {
//         return Container(
//           decoration: BoxDecoration(border: Border.all(color: Colors.black)),
//           margin: EdgeInsets.all(20.0),
//           padding: EdgeInsets.all(20.0),
//           child: Container(
//             decoration: BoxDecoration(border: Border.all(color: Colors.black)),
//             child: Image.network(images[index].url),
//           ),
//         );
//       },
//     );
//   }
// }

class ImageList extends StatelessWidget {
  final List<ArtsyModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            padding: EdgeInsets.all(15.0),
            child: Text(images[index].biography),
          ),
        );
      },
    );
  }
}
