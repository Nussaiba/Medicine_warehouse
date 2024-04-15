import 'package:medicine/controller/api/api_controller.dart';
import 'package:medicine/model/order.dart';

class showOrdersService {
  Future<List<OrderModel>> showOrders() async {
    List<dynamic> data = await ApiController().get(
      url: 'showOrder',
    );

     List<OrderModel> orders = [];
     for (int i = 0; i < data.length; i++) {
         orders.add(OrderModel.fromJson(data[i]));
     }
    print(data.length);
print(data);
    return orders;
  }
}
