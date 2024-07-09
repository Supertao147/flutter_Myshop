import 'package:flutter/material.dart';
import 'package:flutter_myshop/utils/colors.dart';
import 'package:flutter_myshop/widgets/big_text.dart';
import 'package:flutter_myshop/widgets/icon_text_widget.dart';
import 'package:flutter_myshop/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;


  @override
  void  initState(){
    super.initState();
    pageController.addListener((){
    _currPageValue= pageController.page!;
    print("Currrent value is"+_currPageValue.toString());
    });
  }
  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food0.png"))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 140,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "ป้าไร อาหารตามสั่ง"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) {return Icon(
                            Icons.star,
                            color: AppColors.maimColor,
                            size: 15,
                          );}),
                      ),
                      SizedBox(width: 10,),
                      SmallText(text: "4.5"),
                      SizedBox(width: 10,),
                      SmallText(text: '120'),
                      SizedBox(width: 5,),
                      SmallText(text: 'ความคิดเห็น')
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                     IconTextWidget(icon: Icons.circle_sharp, 
                     text: 'Nomal', 
                     iconColor: AppColors.iconColor1),
                     SizedBox(width: 10,),
                     IconTextWidget(icon: Icons.location_on,
                     text: '1.7km', 
                     iconColor: AppColors.maimColor),
                     SizedBox(width: 10,),
                     IconTextWidget(icon: Icons.access_time_rounded, 
                     text: '38mn', 
                     iconColor: AppColors.iconColor2),
                     SizedBox(width: 10,),
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
