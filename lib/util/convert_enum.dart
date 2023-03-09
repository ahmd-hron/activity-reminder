const List<int> ratiing = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const List<String> stringRating = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10'
];
List<String> enumToStringList(List<dynamic> enumValues) {
  assert(enumValues.isNotEmpty);
  final items = <String>[];
  for (var value in enumValues) {
    items.add(value.toString().split('.').last);
  }
  return items;
}
