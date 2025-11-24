import 'package:flutter_test/flutter_test.dart';
import 'package:lango/core/utils/string_extension.dart';

void main() {
  test('converting to snake case', () {
    expect('stageNote'.toSnakeCase(), 'stage_note');
  });
  test('converting to kebab case', () {
    expect('writingOnPaper'.toKebabCase(), 'writing-on-paper');
  });
  test('converting to title case', () {
    expect('hello world'.toTitleCase(), 'Hello World');
    expect('dailyLife'.toTitleCase(), 'Daily Life');
    expect('a'.toTitleCase(), 'A');
  });
}