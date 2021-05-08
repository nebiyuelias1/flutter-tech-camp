import 'dart:io';

String reader(String fileName) {
  var path = Directory.current.path;

  return File('$path/test/fixtures/$fileName').readAsStringSync();
}