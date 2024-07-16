import 'package:flutter/material.dart';
import 'package:glasses_store_design/shared/models/item_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreenContent extends StatelessWidget {
  const DetailsScreenContent({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
           Stack(
             children: [
               Container(
                 height: 40.h,
                 width: double.infinity,
                 decoration: BoxDecoration(
                   color: Colors.grey.shade200.withOpacity(0.6),
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
                      Column(
                        children: [
                          Container(
                            width: 65.w,
                            padding: EdgeInsets.all(10.px),
                            decoration: BoxDecoration(
                              color: Colors.cyanAccent.shade100.withOpacity(0.5),
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
                          SizedBox(height: 1.h,),
                          Container(
                            width: 65.w,
                            padding: EdgeInsets.all(10.px),
                            decoration: BoxDecoration(
                                color: Colors.greenAccent.shade200.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(15.px)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Choice',
                                  style: TextStyle(
                                      color: Colors.grey.shade500.withOpacity(0.5),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.px
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text('Colors:',
                                      style: TextStyle(
                                          fontSize: 22.px,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(5.px),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(15.px)
                                      ),
                                      child: Text('S',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15.px
                                      ),
                                      ),
                                    ),
                                    SizedBox(width: 1.w,),
                                    Container(
                                      padding: EdgeInsets.all(5.px),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(15.px)
                                      ),
                                      child: Text('M',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.px
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 1.w,),
                                    Container(
                                      padding: EdgeInsets.all(5.px),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(15.px)
                                      ),
                                      child: Text('L',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.px
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 1.w,),
                                    Container(
                                      padding: EdgeInsets.all(5.px),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius: BorderRadius.circular(15.px)
                                      ),
                                      child: Text('XL',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.px
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 1.w,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(10.px),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15.px)
                        ),
                        child: Image(
                          height: 16.h,
                            width: 22.w,
                            image: AssetImage(itemList[index].type)),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  Container(
                   width: double.infinity,
                   decoration: BoxDecoration(
                     color: Colors.pinkAccent.shade100.withOpacity(0.3),
                     borderRadius: BorderRadius.circular(15.px)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Choice',
                         style: TextStyle(
                           color: Colors.grey.shade500.withOpacity(0.5),
                           fontWeight: FontWeight.w600,
                           fontSize: 18.px
                         ),
                         ),
                         Row(
                           children: [
                             Text('Size:',
                             style: TextStyle(
                               fontSize: 22.px,
                               fontWeight: FontWeight.w600,
                               color: Colors.black
                             ),
                             ),
                             const Spacer(),
                             Container(
                               width: 10.w,
                               height: 5.h,
                               decoration: BoxDecoration(
                                 color: Colors.blueAccent,
                                 borderRadius: BorderRadius.circular(15.px)
                               ),
                             ),
                             SizedBox(width: 1.w,),
                             Container(
                               width: 10.w,
                               height: 5.h,
                               decoration: BoxDecoration(
                                   color: Colors.pinkAccent,
                                   borderRadius: BorderRadius.circular(15.px)
                               ),
                             ),
                             SizedBox(width: 1.w,),
                             Container(
                               width: 10.w,
                               height: 5.h,
                               decoration: BoxDecoration(
                                   color: Colors.redAccent,
                                   borderRadius: BorderRadius.circular(15.px)
                               ),
                             ),
                             SizedBox(width: 1.w,),
                             Container(
                               width: 10.w,
                               height: 5.h,
                               decoration: BoxDecoration(
                                   color: Colors.black,
                                   borderRadius: BorderRadius.circular(15.px)
                               ),
                             ),
                             SizedBox(width: 1.w,),
                             Container(
                               width: 10.w,
                               height: 5.h,
                               decoration: BoxDecoration(
                                   color: Colors.greenAccent,
                                   borderRadius: BorderRadius.circular(15.px)
                               ),
                             ),
                             SizedBox(width: 1.w,),
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
                  SizedBox(height: 2.h,),
                  Container(
                    padding: EdgeInsets.all(10.px),
                    decoration: BoxDecoration(
                        color: Colors.purpleAccent.shade100.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15.px)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Reviews',
                          style: TextStyle(
                              color: Colors.grey.shade500.withOpacity(0.5),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.px
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 35.px,),
                            Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 35.px,),
                            Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 35.px,),
                            Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 35.px,),
                            Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 35.px,),
                            Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 35.px,),
                            Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 35.px,),
                            const Spacer(),
                            Stack(
                              children: [
                                Container(
                                  width: 25.w,
                                  color: Colors.transparent,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(Icons.person,color: Colors.black87,size: 25.px,),
                                ),
                                Positioned(
                                  left: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.greenAccent,
                                    child: Icon(Icons.person,color: Colors.black87,size: 25.px,),
                                  ),
                                ),
                                Positioned(
                                  left: 40,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.purpleAccent.shade100,
                                    child: Icon(Icons.person,color: Colors.black87,size: 25.px,),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text('Average reviews( 8.2)',
                          style: TextStyle(
                              color: Colors.grey.shade600.withOpacity(0.5),
                              fontWeight: FontWeight.w600,
                              fontSize: 14.px
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                  color: Colors.yellowAccent.shade200.withOpacity(0.4),
                  borderRadius: BorderRadius.all(Radius.circular(30.px))
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed:(){
                    showBottomSheet(context: context,
                        builder: (context) => Container(
                          width: double.infinity,
                          height: 30.h,
                          decoration: BoxDecoration(
                            gradient: RadialGradient(colors: [Colors.cyan.shade200,Colors.cyan.shade200,Colors.grey.shade100,Colors.black87.withOpacity(0.2)]),
                            borderRadius: BorderRadius.vertical(top: Radius.circular(30.px),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(onPressed: (){},
                                  style: ButtonStyle(
                                      minimumSize: WidgetStatePropertyAll(Size.fromRadius(15.px)),
                                      backgroundColor: WidgetStatePropertyAll(Colors.grey.shade300)
                                  ),
                                  icon: Icon(Icons.add,color: Colors.black,size: 20.px,)),
                              Text('1',
                                style: TextStyle(
                                    fontSize: 25.px,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black
                                ),
                              ),
                              IconButton(onPressed: (){},
                                  style: ButtonStyle(
                                      minimumSize: WidgetStatePropertyAll(Size.fromRadius(15.px)),
                                      backgroundColor: WidgetStatePropertyAll(Colors.grey.shade300)
                                  ),
                                  icon: Icon(Icons.remove,color: Colors.black,size: 20.px,)),
                              SizedBox(width: 2.w,),
                            ],
                          ),
                        ),);
                  },
                      style:  ButtonStyle(
                          minimumSize: WidgetStatePropertyAll(Size.fromRadius(25.px)),
                          backgroundColor: const WidgetStatePropertyAll(Colors.black87)
                      ),
                      child:Text('Add to cart',
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 15.px,
                            fontWeight: FontWeight.w700
                        ),
                      )),
                  SizedBox(width: 2.w,),
                  ElevatedButton(onPressed:(){
                    showDatePicker(context: context,
                        firstDate:DateTime.now(), lastDate: DateTime(2024,8,1));
                  },
                      style:  ButtonStyle(
                          minimumSize: WidgetStatePropertyAll(Size.fromRadius(25.px)),
                          backgroundColor: const WidgetStatePropertyAll(Colors.black87)
                      ),
                      child:Text('Try it',
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 15.px,
                            fontWeight: FontWeight.w700
                        ),
                      )),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
