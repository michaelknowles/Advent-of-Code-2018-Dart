import 'package:adventofcode/day2.dart';
import 'package:test/test.dart';

void main() {
  var boxIDs = getBoxIDs();
  test('Part 1', () {
    expect(part1(boxIDs), 6000);
  });
  test('Part 2', () {
    expect(part2(boxIDs), "pbykrmjmizwhxlqnasfgtycdv");
  });
}
