import 'package:flutter/material.dart';
import 'package:glasses_store_design/shared/models/item_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreenContent extends StatelessWidget {
  const DetailsScreenContent({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
       Stack(
         children: [
           Container(
             height: 40.h,
             width: double.infinity,
             decoration: BoxDecoration(
               color: Colors.greenAccent.withOpacity(0.3),
               borderRadius: BorderRadius.vertical(bottom: Radius.circular(30.px))
             ),
             child: Image(
               image: AssetImage(itemList[index].image),
               width: 15.w,
               height: 30.h,
             ),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               IconButton(onPressed: (){
                 Navigator.pop(context);
               },
                   icon: Icon(Icons.arrow_back_outlined,color: Colors.black,size: 25.px,)),
               Text('Details',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 25.px,
                   fontWeight: FontWeight.w600,
                 ),
               ),
               IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.black,size: 25.px,))
             ],
           ),

         ],
       ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60.w,
                    padding: EdgeInsets.all(10.px),
                    decoration: BoxDecoration(
                      color: Colors.cyanAccent.shade200.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15.px)
                    ),
                    child: Text(itemList[index].name,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.px,
                    ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.px),
                    decoration: BoxDecoration(
                        color: Colors.greenAccent.shade200.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15.px)
                    ),
                    child: Image(
                      height: 10.h,
                        width: 22.w,
                        image: AssetImage(itemList[index].type)),
                  ),
                ],
              ),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.px),
                    decoration: BoxDecoration(
                        color: Colors.redAccent.shade200.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15.px)
                    ),
                    child: Text(itemList[index].price,
                    style: TextStyle(
                      fontSize: 25.px,
                      fontWeight: FontWeight.w800,
                      color: Colors.black
                    ),
                    ),
                  ),
                  Container(
                   padding: EdgeInsets.all(10.px),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15.px),
                     color: Colors.purpleAccent.shade200.withOpacity(0.3),
                   ),
                   child: Text('Try it',
                   style: TextStyle(
                     color: Colors.black.withOpacity(0.5),
                     fontWeight: FontWeight.w800,
                     fontSize: 20.px
                   ),
                   ),
                 ),
                ],
              ),
              SizedBox(height: 1.h,),
            ],
          ),
        ),
      ],
    );
  }
}
