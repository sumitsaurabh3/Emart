import 'package:emart/consts/consts.dart';
import 'package:emart/consts/lists.dart';
import 'package:emart/widgets_common/applogo_widget.dart';
import 'package:emart/widgets_common/bg_widget.dart';
import 'package:emart/widgets_common/custom_textfield.dart';
import 'package:emart/widgets_common/our_button.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isCheck=false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Signup to  $appname".text.fontFamily(bold).white.size(18).make(),
              15.heightBox,
              Column(
                children: [
                  customTextField(title: name, hint: nameHint),
                  customTextField(title: email, hint: emailHint),
                  customTextField(title: password, hint: passwordHint),
                  customTextField(title: retypePassword, hint: passwordHint),
                  Row(
                    children: [
                      Checkbox(
                          checkColor: redColor,
                          value: isCheck,
                          onChanged: (newvalue) {
                            setState(() {
                              isCheck=newvalue!;
                            });
                          }),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(fontFamily: regular, color: fontGrey)),
                              TextSpan(
                                  text: "$termAndCond",
                                  style: TextStyle(fontFamily:regular, color:Colors.red)),
                              TextSpan(
                                  text: "&",
                                  style: TextStyle(fontFamily: regular, color: Colors.red)),
                              TextSpan(
                                  text: " $privacyPolicy",
                                  style: TextStyle(fontFamily: regular, color: Colors.red))
                        ])
                        ),
                      )
                    ],
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                  ),
                  5.heightBox,
                  ourButton(
                          color:isCheck == true? redColor : lightGrey,
                          title: signup,
                          textColor: whiteColor,
                          onPress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  //wrapping into gesture detector of velocity x
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      alreadyAccount.text.color(fontGrey).make(),
                      login.text.color(redColor).make().onTap(() {
                        Get.back();

                      })]),

                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(
                    context.screenWidth - 70,
                  )
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
