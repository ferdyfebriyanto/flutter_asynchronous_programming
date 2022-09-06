import 'dart:io';

void longRunningOperation() {
  for (int i = 0; i < 5; i++) {
    sleep(Duration(seconds: 1));
    print('index: $i');
  }
}

void main() {
  print('Start of long running operation');
  longRunningOperation();
  print('Continuing main body');

  for (int i = 10; i < 15; i++) {
    sleep(Duration(seconds: 1));
    print('Index of main body: $i');
    print('End of main body');
  }
}
