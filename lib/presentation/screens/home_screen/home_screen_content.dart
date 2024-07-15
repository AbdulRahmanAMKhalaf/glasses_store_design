import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:glasses_store_design/shared/colors.dart';
import 'package:glasses_store_design/shared/models/category_model.dart';
import 'package:glasses_store_design/shared/models/item_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.cyanAccent.shade100,Colors.grey.shade200],),
          ),
        ),
        SafeArea(
          child: ListView(
            padding: EdgeInsets.all(3.w),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: MyColors.secondaryColor
                        ),
                        prefixIcon: Icon(Icons.search,color: MyColors.secondaryColor,size: 20.px,),
                        filled: true,
                        fillColor: MyColors.backGroundColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.px),
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: MyColors.backGroundColor,
                    radius: 25.px,
                    child: Icon(Icons.question_mark,color: MyColors.secondaryColor,size: 25.px,),
                  ),
                ],
              ),
              SizedBox(height: 2.h,),
              Text('Style, Clarity,\nBrowse',
              style: TextStyle(
                color: MyColors.primaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 30.px
              ),
              ),
              SizedBox(height: 2.h,),
              //============================== Category List ================================//
              SizedBox(
                height: 7.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.px),
                        color: MyColors.backGroundColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 25.px,
                              backgroundColor: Colors.white,
                              child: Image(
                                height: 5.h,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                image: AssetImage(categoryList[index].image),
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Text(categoryList[index].type,
                            style: TextStyle(
                              color: MyColors.primaryColor,fontWeight: FontWeight.w600,fontSize: 18.px
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 2.w,),
                    itemCount: categoryList.length),
              ),
              //============================== Item List ====================================//
              ListView.separated(
                padding:EdgeInsets.all(3.w),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.px),
                        width: double.infinity,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50.px),bottomRight: Radius.circular(50.px,),topRight: Radius.circular(15.px),bottomLeft: Radius.circular(15.px)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              width: double.infinity,
                              height: 20.h,
                              fit: BoxFit.cover,
                              image: AssetImage(itemList[index].image),
                            ),
                            SizedBox(height: 1.h,),
                            Text(itemList[index].name,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.px,
                              fontWeight: FontWeight.w800,
                            ),
                            ),
                            Text(itemList[index].preefing,
                              style: TextStyle(
                                color:MyColors.secondaryColor,
                                fontSize: 15.px,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Text(itemList[index].price,
                                  style: TextStyle(
                                    color: MyColors.primaryColor,
                                    fontSize: 20.px,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                const Spacer(),
                                Image(
                                  height: 10.h,
                                  width: 25.w,
                                  fit: BoxFit.cover,
                                  image: AssetImage(itemList[index].type),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 78.w,
                        top: 1.h,
                        child: Align(
                          alignment: Alignment.topRight,
                            child: Icon(Icons.favorite_border,color: Colors.black,size: 25.px,)),
                      )
                    ],
                  ).animate().fadeIn(duration: 1200.ms,),
                  separatorBuilder: (context, index) => SizedBox(height: 2.h,),
                  itemCount: itemList.length),
            ],
          ),
        ),
      ],
    );
  }
}
