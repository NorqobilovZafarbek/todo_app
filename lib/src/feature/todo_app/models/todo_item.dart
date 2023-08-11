import 'dart:convert';

class DataTitle {
  bool? isCompleted;
  String title;
  final DateTime? dateTime;

  DataTitle({
    required this.title,
    DateTime? dateTime,
    bool? isCompleted,
  })  : isCompleted = isCompleted ?? false,
        dateTime = dateTime ?? DateTime.now();

  void setTitle(String title) {
    this.title = title;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataTitle &&
          runtimeType == other.runtimeType &&
          isCompleted == other.isCompleted &&
          title == other.title &&
          dateTime == other.dateTime;

  @override
  int get hashCode => isCompleted.hashCode ^ title.hashCode ^ dateTime.hashCode;

  factory DataTitle.fromMap(Map<String, Object?> map) {
    return DataTitle(
      title: map["title"] as String,
      isCompleted: map["isCompleted"] as bool,
      dateTime: DateTime.parse(map["dateTime"] as String),
    );
  }

  Map<String, Object?> toMap() {
    return {
      "title": title,
      "isCompleted": isCompleted,
      "dateTime": dateTime.toString(),
    };
  }

  String toJson() => json.encode(toMap());

  factory DataTitle.fromJson(String jsonString) {
    return DataTitle.fromMap(json.decode(jsonString));
  }
}
