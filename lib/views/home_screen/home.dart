import 'package:emart/cart_screen/cart_screen.dart';
import 'package:emart/category_screen/category_screen.dart';
import 'package:emart/consts/consts.dart';
import 'package:emart/controllers/home_controller.dart';
import 'package:emart/profile_screen/profile_screen.dart';
import 'package:emart/views/home_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller=Get.put(HomeController());
    var navbarItem=[
      BottomNavigationBarItem(icon:Image.asset(icHome,width: 26),label: home),
      BottomNavigationBarItem(icon:Image.asset(icCategories,width: 26),label: categories),
      BottomNavigationBarItem(icon:Image.asset(icCart,width: 26),label: cart),
      BottomNavigationBarItem(icon:Image.asset(icProfile,width: 26),label: account),
    ];
    var navBody=[
        const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value),)),
        ],
      ),
      bottomNavigationBar:Obx(()=>
          BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            backgroundColor: whiteColor,
            selectedItemColor: Colors.red,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontFamily: bold),
            onTap: (value){
              controller.currentNavIndex.value=value;
            },
            items: navbarItem,)),
    );
  }
}
