import 'package:bluebay_uapp/app/modules/search/filters/model/filter_screen_model.dart';
import 'package:get/get.dart';

class FilterScreenController extends GetxController {
  // countries
  final RxString selectedCountry = FilterScreenModel.countries[0].obs;
  final RxList<String> availableCountries = FilterScreenModel.countries.obs;

  void updateCountry(String? newValue) {
    if (newValue != null && newValue != selectedCountry.value) {
      selectedCountry.value = newValue;
    }
  }

  // cities
  final RxString selectedCity = FilterScreenModel.cities[0].obs;
  final RxList<String> availableCities = FilterScreenModel.cities.obs;

  void updateCity(String? newValue) {
    if (newValue != null && newValue != selectedCity.value) {
      selectedCity.value = newValue;
    }
  }

  // course duration
  // cities
  final RxString selectedDuration = FilterScreenModel.courseDuration[0].obs;
  final RxList<String> availableDuration = FilterScreenModel.courseDuration.obs;

  void updateDuration(String? newValue) {
    if (newValue != null && newValue != selectedDuration.value) {
      selectedDuration.value = newValue;
    }
  }

  // amount slider
  final RxDouble currentAmount = FilterScreenSliderModel.initialAmount.obs;

  void updateAmount(double newValue){
    if (newValue != currentAmount.value){
      currentAmount.value = newValue;
    }
  }

  // delivery pattern
  final RxList<DeliveryPatternModel> deliveryPatterns = DeliveryPatternModel.deliveryPatterns.obs;


  // @override
  // void onInit() {
  //   super.onInit();
  // }
  //
  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
