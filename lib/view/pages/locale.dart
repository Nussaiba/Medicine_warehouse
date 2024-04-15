import 'package:flutter/material.dart';
import 'package:medicine/controller/local/locale_controller.dart';
import 'package:get/get.dart';

class Locale extends StatelessWidget {
  mylocalcontroller contollerlang = Get.find();
  Locale({Key? key}) : super(key: key);

  get sharedPreference => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1".tr),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "19".tr,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: () {
                  contollerlang.changelang("ar");
                },
                child: Text("2".tr),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: () {
                  contollerlang.changelang("en");
                },
                child: Text("3".tr),
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: () {
                  Get.toNamed('/login');
                },
                child: Text("4".tr),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
