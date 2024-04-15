class CatograyModel {
  final int id;
  final String name;

 CatograyModel({
    required this.id,
    required this.name,
  });

  factory CatograyModel.fromJson( jsonData) {
    return CatograyModel(
      id: jsonData['id'],
      name: jsonData['catogary'],
    );
  }
}
