import 'package:equatable/equatable.dart';

class ItemModel extends Equatable{
  final String image;
  final String name;
  final String price;
  final String preefing;
  final String type;

  const ItemModel({required this.type,required this.image,required this.name,required this.price,required this.preefing});

  @override
  List<Object?> get props => [image,name,price,preefing,type];
}
List<ItemModel>itemList=[
  const ItemModel(type: 'assets/icons/ck.png',image: 'assets/images/glasses1.png', name: 'Calvin Klien sunglasses for men', price: '300\$', preefing: 'Naturals Modern Rectangle Sunglasses'),
  const ItemModel(type: 'assets/icons/gucci.png',image: 'assets/images/glasses2.png', name: 'Gucci sunglasses for men', price: '300\$', preefing: 'Naturals Modern Rectangle Sunglasses'),
  const ItemModel(type: 'assets/icons/lacoste.png',image: 'assets/images/glasses3.png', name: 'Lacoste sunglasses for women', price: '300\$', preefing: 'Naturals Modern Rectangle Sunglasses'),
  const ItemModel(type: 'assets/icons/prada.png',image: 'assets/images/glasses4.png', name: 'Prada sunglasses for men', price: '300\$', preefing: 'Naturals Modern Rectangle Sunglasses'),


];