class CellModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  CellModel(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory CellModel.fromJson(Map<String, dynamic> json) {
    return CellModel(
        albumId: json['albumId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        url: json['url'] as String,
        thumbnailUrl: json['thumbnailUrl'] as String);
  }
}
