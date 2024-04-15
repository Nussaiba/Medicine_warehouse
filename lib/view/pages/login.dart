import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:medicine/controller/api/login.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final adminphonecontroller = TextEditingController();
    final adminpasscontroller = TextEditingController();
        return Scaffold(
        body: SafeArea(
      child: Container(
        width: Width,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                height: height,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              '8'.tr,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              '9'.tr,
                              style: TextStyle(
                                  color: Colors.blue.shade700,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        controller: adminphonecontroller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blue,
                            ),
                            hintText: "5".tr,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide:
                                    BorderSide(color: Colors.blue.shade300))),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        controller: adminpasscontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_open_outlined,
                              color: Colors.blue,
                            ),
                            hintText: '6'.tr,
                            suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide:
                                    BorderSide(color: Colors.blue.shade300))),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: Width,
                        child: ElevatedButton(
                            onPressed: () {
                             
                              LoginService().Login(
                                adminphonecontroller.text,
                                adminpasscontroller.text,
                              );
                              print('before send request');
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40.0),
                                ))),
                            child: Text('10'.tr)),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 30.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Divider(
                              indent: 1.0,
                              color: Colors.black38,
                            )),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15.0),
                              child: Text('12'.tr),
                            ),
                            Expanded(
                                child: Divider(
                              indent: 1.0,
                              color: Colors.black38,
                            ))
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Center(child: Text("7".tr)),
                          SizedBox(
                            width: 5.0,
                          ),
                          InkWell(
                              onTap: () {
                                      Get.toNamed('/register');
                              },
                              child: Text(
                                '11'.tr,
                                style: TextStyle(color: Colors.blue),
                              ))
                        ],
                      )
                    ]),
              ),
            ),
            Positioned(
                top: 15.0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.menu,
                          color: Colors.blue,
                        ),
                        Text(
                          '10'.tr,
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      width: Width,
                    )
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
