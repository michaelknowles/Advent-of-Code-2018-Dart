import 'package:adventofcode/day1.dart';
import 'package:test/test.dart';

void main() {
  var frequencies = getFrequencies();
  test('Part 1', () {
    expect(part1(frequencies), 569);
  });
  test('Part 2', () {
    expect(part2(frequencies), 77666);
  });
}
