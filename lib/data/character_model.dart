import 'dart:convert';

List<Character> charactersFromJson(String str) =>
    List<Character>.from(json.decode(str).map((x) => Character.fromJson(x)));

String charactersToJson(List<Character> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Character {
  String fullName;
  String nickname;
  HogwartsHouse hogwartsHouse;
  String interpretedBy;
  List<String>? children;
  String image;
  String birthdate;
  int index;

  Character({
    required this.fullName,
    required this.nickname,
    required this.hogwartsHouse,
    required this.interpretedBy,
    required this.children,
    required this.image,
    required this.birthdate,
    required this.index,
  });

  factory Character.fromJson(Map<String, dynamic> json) => Character(
    fullName: json["fullName"],
    nickname: json["nickname"],
    hogwartsHouse: hogwartsHouseValues.map[json["hogwartsHouse"]]!,
    interpretedBy: json["interpretedBy"],
    children:
        json["children"] == null
            ? []
            : List<String>.from(json["children"].map((x) => x)),
    image: json["image"],
    birthdate: json["birthdate"],
    index: json["index"],
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "nickname": nickname,
    "hogwartsHouse": hogwartsHouseValues.reverse[hogwartsHouse],
    "interpretedBy": interpretedBy,
    "children": List<dynamic>.from(children?.map((x) => x) ?? []),
    "image": image,
    "birthdate": birthdate,
    "index": index,
  };
}

enum HogwartsHouse { GRYFFINDOR, HUFFLEPUFF, RAVENCLAW, SLYTHERIN }

final hogwartsHouseValues = EnumValues({
  "Gryffindor": HogwartsHouse.GRYFFINDOR,
  "Hufflepuff": HogwartsHouse.HUFFLEPUFF,
  "Ravenclaw": HogwartsHouse.RAVENCLAW,
  "Slytherin": HogwartsHouse.SLYTHERIN,
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
