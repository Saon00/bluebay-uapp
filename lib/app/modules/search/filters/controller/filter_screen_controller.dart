import 'package:bluebay_uapp/app/modules/search/filters/model/filter_screen_model.dart';
import 'package:get/get.dart';

class FilterScreenController extends GetxController {
  final RxString selectedCountry = CountryData.countries[0].obs;
  final RxList<String> availableCountries = CountryData.countries.obs;

  void updateCountry(String? newValue) {
    if (newValue != null && newValue != selectedCountry.value) {
      selectedCountry.value = newValue;
    }
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
