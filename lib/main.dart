import 'dart:io'; // لاستكشاف النظام
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart'; // مكتبة المتصفح داخل التطبيق
import 'package:rheal/api_services/api.dart';
import 'package:rheal/api_services/auth_api.dart';
import 'package:rheal/controllers/main_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  AuthApi.initializeInterceptors();
  Api.initializeInterceptors();

  // تشغيل `flutter_inappwebview` فقط على Android
  if (Platform.isAndroid) {
    InAppWebViewPlatform.instance = InAppWebViewPlatform.instance;
  }

  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.unknown,
      };
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
              backgroundColor: const Color.fromARGB(255, 255, 252, 255),
              body: Column(
                children: [
                  const SizedBox(height: 100),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      child: Image.asset("images/logo1.jpg"),
                    ),
                  ),
                ],
              ))),
      theme: ThemeData(fontFamily: "Ciro"),
    );
  }
}
