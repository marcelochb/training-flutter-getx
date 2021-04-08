class Mtg {
  String name;
  String type;
  String rarity;
  String text;
  String artist;
  String imageUrl;
  List<ForeignNames> foreignNames;

  Mtg({name, type, rarity, text, artist, imageUrl, foreignNames});

  Mtg.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    rarity = json['rarity'];
    text = json['text'];
    artist = json['artist'];
    imageUrl = json['imageUrl'];
    if (json['foreignNames'] != null) {
      foreignNames = <ForeignNames>[];
      json['foreignNames'].forEach((v) {
        foreignNames.add(ForeignNames.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    data['rarity'] = rarity;
    data['text'] = text;
    data['artist'] = artist;
    data['imageUrl'] = imageUrl;
    if (foreignNames != null) {
      data['foreignNames'] = foreignNames.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ForeignNames {
  String name;
  String text;
  String type;
  String flavor;
  String imageUrl;
  String language;
  int multiverseid;

  ForeignNames({name, text, type, flavor, imageUrl, language, multiverseid});

  ForeignNames.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    text = json['text'];
    type = json['type'];
    flavor = json['flavor'];
    imageUrl = json['imageUrl'];
    language = json['language'];
    multiverseid = json['multiverseid'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['text'] = text;
    data['type'] = type;
    data['flavor'] = flavor;
    data['imageUrl'] = imageUrl;
    data['language'] = language;
    data['multiverseid'] = multiverseid;
    return data;
  }
}
