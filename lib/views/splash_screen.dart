import 'package:emart/consts/colors.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/views/login_screen.dart';
import 'package:emart/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //method to change screen
   changeScreen(){

     Future.delayed(const Duration(seconds: 3),(){
       Get.to(()=>const LoginScreen());
     });

   }
   @override
  void initState() {
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
           Image.asset(icSplashBg,width: 300,),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.white.make(),
            5.heightBox,
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
          ],
        ),
      ),
    );
  }
}
