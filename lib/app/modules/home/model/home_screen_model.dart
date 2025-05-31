import 'package:bluebay_uapp/app/core/images.dart';

class ScrollableCardModel {
  // scrollable cards
  final String cardName;
  final int index;

  ScrollableCardModel(this.cardName, this.index);

  static List<ScrollableCardModel> cardNames = [
    ScrollableCardModel("Foundation", 0),
    ScrollableCardModel("Undergraduate", 1),
    ScrollableCardModel("Postgraduate", 2),
    ScrollableCardModel("FdA", 3),
    ScrollableCardModel("CertHE", 4),
  ];
}

class ExploreFieldModel {
  // explore field today
  final String fieldName;
  final int fieldCount;
  final String fieldImg;

  ExploreFieldModel(this.fieldName, this.fieldCount, this.fieldImg);

  static List<ExploreFieldModel> exploreFields = [
    ExploreFieldModel('Data Science and Analytics', 21, AppImages.analysis),
    ExploreFieldModel('Creative Arts and Design', 21, AppImages.analysis),
    ExploreFieldModel(
      'Environmental Science and Sustainability',
      21,
      AppImages.analysis,
    ),
  ];
}
