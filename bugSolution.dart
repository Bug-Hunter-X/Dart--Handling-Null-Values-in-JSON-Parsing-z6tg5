```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Safely access nested data using null-aware operators
      final nestedValue = jsonData['nested']?['value'];
      if (nestedValue != null) {
        print('Nested value: $nestedValue');
      } else {
        print('Nested value is null.');
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('An error occurred: $e');
  }
}
```