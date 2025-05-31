class HomeScreenModel {
  final String cardName;
  final int index;
  HomeScreenModel(this.cardName, this.index);

  static List<HomeScreenModel> cardNames = [
    HomeScreenModel("Foundation", 0),
    HomeScreenModel("Undergraduate", 1),
    HomeScreenModel("Postgraduate", 2),
    HomeScreenModel("FdA", 3),
    HomeScreenModel("CertHE", 4),
  ];
}
