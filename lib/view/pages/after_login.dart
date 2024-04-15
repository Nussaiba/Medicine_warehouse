import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class AfterLogin extends StatelessWidget {
  const AfterLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: Width,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Stack(
          children: [
            Stack(children: [
              Container(
                height: height,
                child: Column(children: [
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'images/nn.png',
                    width: 400,
                    height: 400,
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Text('18'.tr,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  MaterialButton(
                    elevation: 5.0,
                    color: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 80),
                    child: Text(
                      '17'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none),
                    onPressed: () {
                      Get.offAllNamed('/home');
                    },
                  ),
                ]),
              )
            ]),
            Positioned(
                top: 15.0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Icon(
                            Icons.keyboard_backspace,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          '17'.tr,
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
      )),
    );
  }
}
