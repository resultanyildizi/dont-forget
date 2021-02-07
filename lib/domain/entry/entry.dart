import 'dart:convert';

class Entry {
  bool value;
  DateTime updatedAt;
  Entry({
    this.value,
    this.updatedAt,
  });

  Entry copyWith({
    bool value,
    DateTime updatedAt,
  }) {
    return Entry(
      value: value ?? this.value,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  String get timeString {
    final hour = updatedAt.hour;
    final minute = updatedAt.minute;

    String hourStr = hour.toString(), minuteStr = minute.toString();

    if (hour < 10) {
      hourStr = '0$hourStr';
    }
    if (minute < 10) {
      minuteStr = '0$minuteStr';
    }

    return '$hourStr:$minuteStr';
  }

  Map<String, dynamic> toMap() {
    return {
      'value': value,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory Entry.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Entry(
      value: map['value'],
      updatedAt: DateTime.fromMillisecondsSinceEpoch(map['updatedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Entry.fromJson(String source) => Entry.fromMap(json.decode(source));

  @override
  String toString() => 'Entry(value: $value, updatedAt: $updatedAt)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Entry && o.value == value && o.updatedAt == updatedAt;
  }

  @override
  int get hashCode => value.hashCode ^ updatedAt.hashCode;
}
