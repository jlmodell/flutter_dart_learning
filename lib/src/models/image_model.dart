class ImageModel {
  int id;
  String title;
  String url;

  ImageModel(this.id, this.title, this.url);

  ImageModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    url = json['url'];
  }

  // ImageModel.fromJson(Map<String, dynamic> json)
  // : id = json['id'],
  //   url = json['url'],
  //   title = json['title'];
}
