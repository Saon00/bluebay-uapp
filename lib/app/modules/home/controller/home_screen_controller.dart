import 'package:get/get.dart';

class HomeScreenController extends GetxController{
 final RxInt selectedCard = 0.obs;

  void changeCard(var i){
    if(selectedCard.value != i){
      selectedCard.value = i;
    }
  }
}