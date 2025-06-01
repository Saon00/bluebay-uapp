class FilterScreenModel {
  static final List<String> countries = [
    'Select Country',
    'Bangladesh',
    'United States',
    'Canada',
    'United Kingdom',
    'Australia',
  ];

  static final List<String> cities = [
    'Select Location',
    'Dhaka',
    'New York',
    'Manitoba',
    'London',
    'Sydney',
  ];

  static final List<String> courseDuration = [
    'Select Duration',
    '1 Month',
    '2 Months',
    '3 Months',
    '4 Months',
  ];
}

class FilterScreenSliderModel {
  static const double minAmount = 0.0;
  static const double maxAmount = 23000.0;
  static const double initialAmount = 10000.0;
}

class DeliveryPatternModel {
  final String name;
  final bool isSelected;

  DeliveryPatternModel(this.name, this.isSelected);

  static List<DeliveryPatternModel> deliveryPatterns = [
    DeliveryPatternModel('On-Campus', false),
    DeliveryPatternModel('Online', true),
    DeliveryPatternModel('Hybrid', false),
  ];
}
