import 'package:flutter_test/flutter_test.dart';
import 'package:lango/core/utils/string_utils.dart';

void main() {
  test('converting to snake case', () {
    expect('stageNote'.toSnakeCase(), 'stage_note');
  });
}