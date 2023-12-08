import 'package:emart/consts/consts.dart';
import 'package:emart/consts/lists.dart';
import 'package:emart/widgets_common/home_buttons.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: const EdgeInsets.all(12),
      width: context.width,
      height: context.height,
     child: SafeArea(child: Column(
       children: [
         Container(
           height: 60,
           color: lightGrey,
           child: TextFormField(
             decoration:  InputDecoration(
               enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
               border: InputBorder.none,
               suffixIcon: const Icon(Icons.search),
               filled: true,
               fillColor: whiteColor,
               hintText: searchemart,
               hintStyle: const TextStyle(
                 color: textfieldGrey,

               )
             ),
           ),
         ),
         //Swiper
         10.heightBox,
         Expanded(
           child: SingleChildScrollView(
             physics: const BouncingScrollPhysics(),
             child: Column(
               children: [
                 VxSwiper.builder(
                     aspectRatio: 16/9,
                     autoPlay: true,
                     height: 180,
                     enlargeCenterPage: true,
                     itemCount: slidersList.length, itemBuilder: (context,index){
                   return Image.asset(slidersList[index],
                   fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin( const EdgeInsets.symmetric(horizontal: 8)).make();
                 }),
               ],
             ),
           ),
         ),
         10.heightBox,
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: List.generate(2,(index) =>HomeButton(
             height:context.screenHeight*0.10,
             width:context.screenWidth/2.5,
             icon: index==0 ? icTodaysDeal :icFlashDeal,
             title:index==0 ? todaydeal: flashSale,
           ),
           ),
         ),
         //2nd swippwer
         10.heightBox,
         VxSwiper.builder(
             aspectRatio: 16/9,
             autoPlay: true,
             height: 180,
             enlargeCenterPage: true,
             itemCount: slidersList.length, itemBuilder: (context,index){
           return Image.asset(secondslidersList[index],
             fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
         }),
         10.heightBox,
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: List.generate(3, (index) => HomeButton(
               height: context.screenHeight*0.10,
             width: context.screenWidth/3.5,
              icon: index ==0 ?icTopCategories :index==1 ? icBrands :icTopSeller,
             title: index==0?topCategories :index==1 ?brand : topSellers,
           )),
         ),
         //featured categories
         10.heightBox,
         Align(alignment: Alignment.centerLeft,
             child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
         Align(alignment: Alignment.centerLeft,
             child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),

         Align(alignment: Alignment.centerLeft,
             child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),

       ]
     ),),

    );
  }
}
