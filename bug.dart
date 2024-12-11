```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access nested data without checking for null values
      final nestedValue = jsonData['nested']['value']; //Error prone
      print('Nested value: $nestedValue');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    //Rethrow the exception to be handled by a higher level
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