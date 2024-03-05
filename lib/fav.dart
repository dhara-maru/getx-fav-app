import 'package:get/get.dart';

class favcontroller extends GetxController{
  RxList<String> fruitlist = ['apple', 'orange', 'banana', 'kiwi', 'litchi'].obs;
  RxList templist = [].obs;

  addtofav(String value){
    templist.add(value);
  }

  removefromfav(String value){
    templist.remove(value);
  }
}