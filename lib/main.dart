import 'package:e_fast/controllers/global_controller.dart';
import 'package:e_fast/locale/language.dart';
import 'package:e_fast/screen/splash/splash_screen.dart';
import 'package:e_fast/screen/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  final box = GetStorage();
  WidgetsFlutterBinding.ensureInitialized();
  // NotificationService notificationService = NotificationService();
  // await notificationService.initialize();

  await GetStorage.init();
  dynamic langValue = const Locale('en', 'US');
  if (box.read('lang') != null) {
    langValue = Locale(box.read('lang'), box.read('langKey'));
  } else {
    langValue = const Locale('en', 'US');
  }
  runApp(MyApp(lang: langValue));
}

class MyApp extends StatelessWidget {
  final Locale lang;
  const MyApp({super.key, required this.lang});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: primaryColor),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Get.put(GlobalController()).onInit();
    return ScreenUtilInit(
      designSize: Size(360, 800),
      builder: ((context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: Languages(),
        locale: lang,
        title: 'Merchant',
        theme: ThemeData(fontFamily: 'Display'),
        home: const SplashScreen(),
      )),
    );
  }
}
