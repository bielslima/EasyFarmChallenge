class Roles {
  String id;
  String name;
  String path;
  String createdAt;
  String updatedAt;
  String description;
  String title;

  Roles(
      {this.id,
      this.name,
      this.path,
      this.createdAt,
      this.updatedAt,
      this.description,
      this.title});

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    path = json['path'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    description = json['description'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['path'] = this.path;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['description'] = this.description;
    data['title'] = this.title;
    return data;
  }
}
