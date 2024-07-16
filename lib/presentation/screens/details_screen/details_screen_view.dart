import 'package:flutter/material.dart';
import 'package:glasses_store_design/presentation/screens/details_screen/details_screen_content.dart';

class DetailsScreenView extends StatelessWidget {
  const DetailsScreenView({super.key,required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: DetailsScreenContent(index: index,),
    );
  }
}
