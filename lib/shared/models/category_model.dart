import 'package:equatable/equatable.dart';

class CategoryModel extends Equatable{
  final String image;
  final String type;

  const CategoryModel({required this.image,required this.type});
  @override
  List<Object?> get props =>[image,type];
}
List<CategoryModel>categoryList= const[
  CategoryModel(image: 'assets/icons/prada.png', type: 'Prada'),
  CategoryModel(image: 'assets/icons/lacoste.png', type: 'Lacoste'),
  CategoryModel(image: 'assets/icons/gucci.png', type: 'Gucci'),
  CategoryModel(image: 'assets/icons/ck.png', type: 'Calvin Klien'),
];