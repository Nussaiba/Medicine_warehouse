import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:medicine/controller/api/register.dart';


class Register
 extends StatelessWidget {
  const  Register ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final adminphonecontroller = TextEditingController();
    final adminpasscontroller = TextEditingController();
    final adminnamecontroller = TextEditingController();
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
                              '15'.tr,
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
                        controller: adminnamecontroller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.blue,
                            ),
                            hintText: '13'.tr,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide:
                                    BorderSide(color: Colors.blue.shade300))),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        controller: adminphonecontroller,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.blue,
                            ),
                            hintText: '5'.tr,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide:
                                    BorderSide(color: Colors.blue.shade300))),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextField(
                        controller: adminpasscontroller,
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
                        height: 15.0,
                      ),
                      Container(
                        width: Width,
                        child: ElevatedButton(
                            onPressed: () {
                             RegisterService().Register(
                                adminphonecontroller.text,
                                adminpasscontroller.text,
                                adminnamecontroller.text,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 20.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  bottomRight: Radius.circular(40.0),
                                ))),
                            child: Text('20'.tr)),
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
                            //Container(
                            //margin: EdgeInsets.symmetric(horizontal: 15.0),
                            //child: Text('or'),
                            // ),
                            Expanded(
                                child: Divider(
                              indent: 1.0,
                              color: Colors.black38,
                            ))
                          ],
                        ),
                      ),
                     
                    ],
                  )
                  
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
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Icon(
                            Icons.keyboard_backspace,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          '16'.tr,
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
