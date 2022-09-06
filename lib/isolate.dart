import 'dart:io';
import 'dart:isolate';

// Future is a class that represents a delayed computation.
Future<void> longRunningOperation(String message) async {
  // async is a keyword
  for (int i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    print('index: $i');
  }
}

// kita dapat kolaborasikan kedua looping ini dengan menggunakan Future.
void main() async {
  print('Start of long running operation');
  Isolate.spawn(longRunningOperation, 'Hello');
  print('Continuing main body');

  for (int i = 10; i < 15; i++) {
    await Future.delayed(Duration(seconds: 1));
    print('Index of main body: $i');
    print('End of main body');
  }
}
