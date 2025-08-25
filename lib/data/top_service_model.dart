class TopServiceModel {
  final String? img;
  final String? imgPerson;
  final String? name;
  final String? title;
  final String? description;
  final double? rate;
  final Function()? onTap;

  TopServiceModel({
    required this.img,
    required this.title,
    required this.rate,
    this.imgPerson,
    this.name,
    this.description,
    this.onTap,
  });
}
