class onboardingModel {
  String? title;
  String? title2;
  String? image;
  String? description;

  onboardingModel({this.title, this.title2, this.image, this.description});

  onboardingModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    title2 = json['title2'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['title2'] = this.title2;
    data['image'] = this.image;
    data['description'] = this.description;
    return data;
  }
}
