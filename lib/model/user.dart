class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({required this.id,required this.name, required this.phone});

  factory UserModel.fromJson(jsonData) {
    return UserModel(
         id: jsonData['id'],
        name: jsonData['name'],
       phone: jsonData['phone']
        );
  }
}
