


List<double> extractDataFromJson(String key, Map<String, dynamic> data) {
  final result = data[key]
      .map((e) => e is num ? e.toDouble() : null)
      .whereType<double>() // Filters out any nulls or non-numeric values
      .toList();
  return result;
}