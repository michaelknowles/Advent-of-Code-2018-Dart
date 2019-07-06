import 'dart:io';

List<String> getBoxIDs() {
  final inputFile = File('res/day2-input.txt');
  var boxIDs = inputFile.readAsLinesSync()
    .toList();

  return boxIDs;
}

Map<String,int> findCounts(String boxID) {
    var charSet = Set();
    for (var i = 0; i < boxID.length; i++) {
      charSet.add(boxID[i]);
    }
    var matchCounts = Map<String,int>();
    for (var char in charSet) {
      matchCounts[char] = char.allMatches(boxID).length;
    }

    return matchCounts;
}

int part1(List<String> boxIDs) {
  // Count IDs with exactly 2 of any letter
  var count2 = boxIDs.where((x) => findCounts(x).containsValue(2)).length;

  // Count IDs with exactly 3 of any letter
  var count3 = boxIDs.where((x) => findCounts(x).containsValue(3)).length;

  var checksum = count2 * count3;
  return checksum;
}

String part2(List<String> boxIDs) {
  boxIDs.sort((x, y) => x.compareTo(y));
  // Compare each string to the next one in the list
  // Exit if a match (-1 character) is found
  for (var i = 0; i < boxIDs.length; i++) {
    List<int> differences = [];
    for (var j = 0; j < boxIDs[i].length; j++) {
      if (boxIDs[i][j] != boxIDs[i+1][j]) {
        differences.add(j);
      }
    }
    if (differences.length == 1) {
      int pos = differences[0];
      return boxIDs[i].substring(0, pos) + boxIDs[i].substring(pos+1);
    }
  }
  return "";
}

void runAll() {
  var boxIDs = getBoxIDs();
  print(part1(boxIDs));
  print(part2(boxIDs));
}