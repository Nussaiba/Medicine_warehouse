import 'package:get/get.dart';
import 'package:medicine/controller/api/api_controller.dart';

class RegisterService{
  Future Register(String phone, String pass, String name) async {
    Map<String, dynamic> response = await ApiController().post(
      url: 'register',
      body: {
        'phone': phone,
        'password': pass,
        'name': name,
      },
    );

    String token = response['data']['token'];
    print(token);

    if (response['status'] == 1)
      Get.toNamed('/login');
    //else
    //  Get.to(signup());
  }
}
