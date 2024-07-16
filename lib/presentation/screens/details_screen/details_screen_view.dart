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
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          height: 10.h,
          decoration: BoxDecoration(
            color: Colors.yellow.withOpacity(0.8),
            borderRadius: BorderRadius.all(Radius.circular(15.px))
          ),
        ),
      ),
      body: DetailsScreenContent(index: index,),
    );
  }
}
