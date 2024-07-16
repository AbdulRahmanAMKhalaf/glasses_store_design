import 'package:flutter/material.dart';
import 'package:glasses_store_design/presentation/screens/details_screen/details_screen_content.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailsScreenView extends StatelessWidget {
  const DetailsScreenView({super.key,required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: EdgeInsets.all(3.w),
          decoration: BoxDecoration(
            color: Colors.yellowAccent.shade200.withOpacity(0.4),
            borderRadius: BorderRadius.all(Radius.circular(30.px))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             /* IconButton(onPressed: (){},
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
              SizedBox(width: 2.w,),*/
              ElevatedButton(onPressed:(){},
                  style:  ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size.fromRadius(30.px)),
                    backgroundColor: WidgetStatePropertyAll(Colors.black87)
                  ),
                  child:Text('Add to cart',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 20.px,
                    fontWeight: FontWeight.w700
                  ),
                  )),
              SizedBox(width: 2.w,),
              ElevatedButton(onPressed:(){},
            style:  ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size.fromRadius(30.px)),
                backgroundColor: const WidgetStatePropertyAll(Colors.black87)
            ),
            child:Text('Try it',
              style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 20.px,
                  fontWeight: FontWeight.w700
              ),
            )),
            ],
          ),
        ),
      ),
      body: DetailsScreenContent(index: index,),
    );
  }
}
