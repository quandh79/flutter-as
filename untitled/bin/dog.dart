import 'animal.dart';

class Dog extends Animal{
  String? eyeColor;
  Dog({this.eyeColor,String? color, int? length}) : super(color:color, length: length);
}