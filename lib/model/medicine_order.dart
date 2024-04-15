import 'package:medicine/model/medicine.dart';
import 'package:medicine/model/user.dart';

class MedicinesOrderModel {
  final int card_id;
  final String medicine_name;
  final int quantity;
final String created_at;
  MedicinesOrderModel({
    required this.card_id,
    required this.medicine_name,
    required this.quantity,
        required this.created_at,

  });

  factory MedicinesOrderModel.fromJson(jsonData) {
    return MedicinesOrderModel(
        card_id: jsonData['card_id'],
        medicine_name: jsonData['medicine_name'],
        quantity: jsonData['quantity'],
         created_at:jsonData['created_at']);
  }
}
