import 'dart:io';

List<int> getFrequencies() {
  final inputFile = File('res/day1-input.txt');
  var frequencies = inputFile.readAsLinesSync()
    .map((frequency) => int.tryParse(frequency))
    .toList();

  return frequencies;
}

int part1(List<int> frequencies) {
  var sum = frequencies.reduce((x, y) => x + y);

  return(sum);
}

int part2(List<int> frequencies) {
  var sum;
  var sums = [0];
  for(var i = 0; i < frequencies.length; i++) {
    sum = sums.last + frequencies[i];
    if (sums.contains(sum)) { break; };
    sums.add(sum);
    if (i+1 == frequencies.length) { i = 0; };
  }

  return sum;
}

void runAll() {
  var frequencies = getFrequencies();
  print(part1(frequencies));
  print(part2(frequencies));
}