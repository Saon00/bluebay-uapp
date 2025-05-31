class ApplicationStatusModel {
  final String status;
  final int statusCount;

  ApplicationStatusModel(this.status, this.statusCount);

  static List<ApplicationStatusModel> applicationStatus = [
    ApplicationStatusModel("Active", 1),
    ApplicationStatusModel("Cancelled", 1),
  ];
}
