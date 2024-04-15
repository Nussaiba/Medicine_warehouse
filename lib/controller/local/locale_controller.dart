
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class mylocalcontroller extends GetxController {
  // mylocalcontroller controller = Get.put(mylocalcontroller());
  // Locale? intialLang = sharepref!.getString("lang") == null
  // ? Get.deviceLocale
  // : Locale(sharepref!.getString("lang"));
  //? const Locale("ar")
  // : const Locale("en");
  Locale? language;
  // MyServices myServices = Get.find();

  //get sharedPreference => null;
  changelang(String codelang) {
    Locale locale = Locale(codelang);
    // sharepref?.setString("lang", codelang);
    //// myServices.sharedPreferences.setString("lang", codelang);
    Get.updateLocale(locale);
  }
}
/*
  @override
  onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = Locale("ar");
    } else if (sharedPrefLang == "en") {
      language = Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    sharedPreferences != await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}*/
