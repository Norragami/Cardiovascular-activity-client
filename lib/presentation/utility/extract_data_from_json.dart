
List<double> extractDataFromJson(String key, Map<String, dynamic> data) {
   final value = data[key];

  if (value is List) {
    return value.map((e) => e is num ? e.toDouble() : null).whereType<double>().toList();
  } else if (value is double) {
    List<double> myValue = [value];
    return myValue;
  } else {
    return [];
  }
}