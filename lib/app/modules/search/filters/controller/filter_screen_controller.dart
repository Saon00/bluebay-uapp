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

  void selectedPattern(int selectedIndex){
    for(int i = 0; i< deliveryPatterns.length; i++){
      final currentPattern = deliveryPatterns[i];
      final bool newSelectionState = (i == selectedIndex);

      if (currentPattern.isSelected != newSelectionState) {
        final updatedPattern = currentPattern.copyWith(isSelected: newSelectionState);

        deliveryPatterns[i] = updatedPattern;
      }
    }
  }
  DeliveryPatternModel? getSelectedPattern() {
    // findWhere is a GetX extension on Iterable
    return deliveryPatterns.firstWhereOrNull((pattern) => pattern.isSelected);
  }



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
