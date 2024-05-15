class UserModel {
  String? name, family;
  UserModel({this.family, this.name});
  String fullName() {
    var name = this.name! + family!;
    print(name);
    return name;
  }
}
