 import 'dart:io';
 // 1.(h) a dart program that checks if a number is odd or even

void main() {
  print('Enter a number:');
  
  // Read input from the user
  int? number = int.tryParse(stdin.readLineSync()!);
  
  if (number == null) {
    print('Invalid input. Please enter a valid integer.');
    return;
  }

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

