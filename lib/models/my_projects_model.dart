class ProjectsModel {
  String title;
  String description;
  String shortDescription;
  String? downloadPath;
  String logo;
  List<String> images;

  ProjectsModel(
      {this.title = '',
      this.description = '',
      this.shortDescription = '',
      this.downloadPath,
      required this.logo,
      required this.images});
}
