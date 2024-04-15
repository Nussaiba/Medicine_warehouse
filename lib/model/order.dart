import 'package:medicine/model/medicine.dart';
import 'package:medicine/model/user.dart';

class OrderModel {
  final int id;
  final int user_id;
  final String send_status;
  final String payment_status;
  final String user_name;
  final UserModel user;
  final String created_at;

  OrderModel(
      {required this.id,
      required this.user_id,
      required this.send_status,
      required this.payment_status,
      required this.user_name,
      required this.user,
      required this.created_at
      });

  factory OrderModel.fromJson(jsonData) {
    return OrderModel(
        id: jsonData['id'],
        user_id: jsonData['user_id'],
        send_status: jsonData['send_status'],
        payment_status: jsonData['payment_status'],
        user_name: jsonData['user_name'],
        created_at: jsonData['created_at'],
        user: UserModel.fromJson(jsonData['user']));
  }
}
