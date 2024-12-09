void main() {
  // Create a Map with names as keys and their corresponding values as the map  values
  Map<String, String> namesMap = {
    '1': 'brenda',
    '2': 'shanitah',
    '3': 'Esther'
  };

  // Print the map to display the names
  print('Names in the map:');
  namesMap.forEach((key, value) {
    print('Key: $key, Value: $value');
  });
}
