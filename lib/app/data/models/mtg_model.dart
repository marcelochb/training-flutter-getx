class Mtg {
  late String name;
  late String type;
  late String rarity;
  late String text;
  late String artist;
  late String imageUrl;
  late String id;
  late List<ForeignNames> foreignNames;

  Mtg(
      {this.name = '',
      this.id = '',
      this.type = '',
      this.rarity = '',
      this.text = '',
      this.artist = '',
      this.imageUrl = '',
      this.foreignNames = const []});

  Mtg.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    type = json['type'];
    rarity = json['rarity'];
    text = json['text'];
    artist = json['artist'];
    imageUrl = json['imageUrl'] ?? '';
    if (json['foreignNames'] != null) {
      foreignNames = [].cast<ForeignNames>();
      json['foreignNames'].forEach((v) {
        final _foreignName = ForeignNames.fromJson(v);
        foreignNames.add(_foreignName);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['type'] = this.type;
    data['rarity'] = this.rarity;
    data['text'] = this.text;
    data['artist'] = this.artist;
    data['imageUrl'] = this.imageUrl;
    data['foreignNames'] = this.foreignNames.map((v) => v.toJson()).toList();
    return data;
  }
}

class ForeignNames {
  late String name;
  late String text;
  late String type;
  late String flavor;
  late String imageUrl;
  late String language;
  late int multiverseid;

  ForeignNames(
      {this.name = '',
      this.text = '',
      this.type = '',
      this.flavor = '',
      this.imageUrl = '',
      this.language = '',
      this.multiverseid = 0});

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['text'] = this.text;
    data['type'] = this.type;
    data['flavor'] = this.flavor;
    data['imageUrl'] = this.imageUrl;
    data['language'] = this.language;
    data['multiverseid'] = this.multiverseid;
    return data;
  }
}
