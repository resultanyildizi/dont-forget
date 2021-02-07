import 'dart:convert';

import 'package:dont_forget/domain/entry/entry.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Entry tEntry;
  List<Entry> tEntryList;
  List<Map<String, dynamic>> tEntryMapList;
  List<String> tEntryJsonList;
  List<DateTime> tDateTimeList;
  List<String> tDateTimeStrList;

  setUp(() {
    tEntry = Entry(value: true, updatedAt: DateTime(2021, 2, 8, 11, 20));
    tEntryList = [
      Entry(value: true, updatedAt: DateTime(2021, 2, 8, 11, 12)),
      Entry(value: false, updatedAt: DateTime(2021, 3, 7, 11, 49)),
      Entry(value: true, updatedAt: DateTime(2021, 4, 8, 1, 34)),
      Entry(value: false, updatedAt: DateTime(2021, 1, 12, 11, 20)),
      Entry(value: false, updatedAt: DateTime(2021, 2, 8, 3, 5)),
      Entry(value: true, updatedAt: DateTime(2021, 5, 4, 11, 17)),
      Entry(value: false, updatedAt: DateTime(2021, 3, 9, 11, 26)),
    ];

    tEntryMapList = <Map<String, dynamic>>[
      {
        'value': true,
        'updatedAt': DateTime(2021, 2, 8, 11, 12).millisecondsSinceEpoch
      },
      {
        'value': false,
        'updatedAt': DateTime(2021, 3, 7, 11, 49).millisecondsSinceEpoch
      },
      {
        'value': true,
        'updatedAt': DateTime(2021, 4, 8, 1, 34).millisecondsSinceEpoch
      },
      {
        'value': false,
        'updatedAt': DateTime(2021, 1, 12, 11, 20).millisecondsSinceEpoch
      },
      {
        'value': false,
        'updatedAt': DateTime(2021, 2, 8, 3, 5).millisecondsSinceEpoch
      },
      {
        'value': true,
        'updatedAt': DateTime(2021, 5, 4, 11, 17).millisecondsSinceEpoch
      },
      {
        'value': false,
        'updatedAt': DateTime(2021, 3, 9, 11, 26).millisecondsSinceEpoch
      },
    ];

    tEntryJsonList = tEntryMapList.map((e) => json.encode(e)).toList();

    tDateTimeStrList = [
      '11:12',
      '11:49',
      '01:34',
      '11:20',
      '03:05',
      '11:17',
      '11:26',
    ];
  });
  group('copyWith', () {
    test(
      'should satisfy value eqaulity if copies are identical',
      () async {
        // act
        final tEntryIdenticalCopy = tEntry.copyWith();
        // assert
        expect(tEntryIdenticalCopy, equals(tEntry));
      },
    );

    test(
      'should not be equal if copies are not identical',
      () async {
        // act
        final tEntryUnidenticalCopy = tEntry.copyWith(value: false);
        // assert
        expect(tEntryUnidenticalCopy, isNot(equals(tEntry)));
      },
    );
  });

  group('toMap', () {
    setUp(() {});
    test(
      'should return a valid [Map<String, dynmaic>] for given [Entry]',
      () async {
        // act
        final result = tEntryList.map((t) => t.toMap()).toList();
        // assert
        expect(result, equals(tEntryMapList));
      },
    );
  });

  group('fromMap', () {
    setUp(() {});
    test(
      'should return a valid [Entry] for given [Map<String, dynamic>]',
      () async {
        // act
        final result = tEntryMapList.map((t) => Entry.fromMap(t)).toList();
        // assert
        expect(result, equals(tEntryList));
      },
    );
  });

  group('toJson', () {
    setUp(() {});
    test(
      'should return a valid json for given [Entry]',
      () async {
        // act
        final result = tEntryList.map((t) => t.toJson()).toList();
        // assert
        expect(result, equals(tEntryJsonList));
      },
    );
  });

  group('fromJson', () {
    setUp(() {});
    test(
      'should return a valid [Entry] for given json',
      () async {
        // act
        final result = tEntryJsonList.map((t) => Entry.fromJson(t)).toList();
        // assert
        expect(result, equals(tEntryList));
      },
    );
  });

  group('toTimeStr', () {
    setUp(() {});
    test(
      'should return a valid [String] for given [Entry]',
      () async {
        // act
        final result = tEntryList.map((t) => t.timeString).toList();
        // assert
        expect(result, equals(tDateTimeStrList));
      },
    );
  });
}
