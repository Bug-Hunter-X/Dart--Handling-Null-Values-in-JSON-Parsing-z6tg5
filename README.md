# Dart: Handling Null Values in JSON Parsing

This repository demonstrates a common error in Dart when parsing JSON data: accessing nested values without checking for nulls. The `bug.dart` file shows the problematic code, while `bugSolution.dart` presents a robust solution.

## Problem

The `fetchData` function in `bug.dart` retrieves JSON data and attempts to access a nested value. If the nested key is missing or the value is null, the code will throw a runtime exception.

## Solution

The solution in `bugSolution.dart` adds null checks before accessing each nested element. This ensures the code gracefully handles the absence of expected data, preventing unexpected crashes.