class MedicineModel {
  final int id;
  final String scientific_name;
  final String commercial_name;
  final String company;
  final int catogary_id;
  final int quantity;
  final String date;
  final int price;
  final String created_at;
  final String updated_at;
  final String image;

  MedicineModel({
    required this.scientific_name,
    required this.commercial_name,
    required this.company,
    required this.catogary_id,
    required this.quantity,
    required this.date,
    required this.created_at,
    required this.updated_at,
    required this.id,
    required this.price,
    required this.image,
  });

  factory MedicineModel.fromJson(jsonData) {
    return MedicineModel(
      id: jsonData['id'],
      scientific_name: jsonData['scientific_name'],
      commercial_name: jsonData['commercial_name'],
      company: jsonData['company'],
      catogary_id: jsonData['catogary_id'],
      quantity: jsonData['quantity'],
      date: jsonData['date'],
      price: jsonData['price'],
      created_at: jsonData['created_at'],
      updated_at: jsonData['updated_at'],
      image: jsonData['image'],
    );
  }
}
