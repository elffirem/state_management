import 'package:get/get.dart';

class LightSwitchController extends GetxController{
  RxBool isLightOn =false.obs;

  void toggleLight(){
    isLightOn.value=!isLightOn.value;
  }
}