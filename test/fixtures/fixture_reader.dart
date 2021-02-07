import 'dart:io';

String readFixture(String name) =>
    File('test/fixtures/$name').readAsStringSync();
