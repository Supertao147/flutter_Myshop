import 'package:flutter/material.dart';
import 'package:flutter_myshop/home/food_page_dody.dart';
import 'package:flutter_myshop/utils/colors.dart';
import 'package:flutter_myshop/widgets/big_text.dart';
import 'package:flutter_myshop/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  _MainFoodPage createState() => _MainFoodPage();
}

class _MainFoodPage extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Column(
      children: [
        Container(
          child: Container(
            margin: EdgeInsets.only(top: 40, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "WalkwallStreet",
                      color: AppColors.maimColor,
                    ),
                    Row(
                      children: [
                        SmallText(text: "Bangkok",color: Colors.black54,),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Container(
                  width: 45,
                  height: 45,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.maimColor,
                  ),
                )
              ],
            ),
          ),
        ),
        FoodPageBody()
      ],
    ));
  }
}
