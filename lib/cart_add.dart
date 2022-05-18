import 'package:get/get.dart';

class myController extends GetxController{
  var count = 0.obs;

  increament(){
    count.value++;
  }
  decreament(){
    count.value--;
  }
}
