import 'package:emart/consts/consts.dart';
import 'package:emart/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
     debugShowCheckedModeBanner: false,
     title:appname ,
     theme: ThemeData(
       scaffoldBackgroundColor: Colors.transparent,
       appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
       fontFamily: regular,
     ),
     home: SplashScreen(),
   );

  }

}

