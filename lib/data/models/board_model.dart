class BoardModel {
  final int id;
  final String name;

  const BoardModel({required this.id, required this.name});

  factory BoardModel.fromJson(Map<String, dynamic> json) {
    return BoardModel(id: json['id'], name: json['name']);
  }
}
