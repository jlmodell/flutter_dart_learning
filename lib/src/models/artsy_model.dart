class ArtsyModel {
  String id;
  String name;
  String biography;
  // String href;

  ArtsyModel(this.id, this.name, this.biography);

  ArtsyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    biography = json['biography'];
    // href = json['_links'];
  }

  // ImageModel.fromJson(Map<String, dynamic> json)
  // : id = json['id'],
  //   url = json['url'],
  //   title = json['title'];
}
