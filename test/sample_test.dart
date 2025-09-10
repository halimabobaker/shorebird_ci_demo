import 'package:flutter_test/flutter_test.dart';

void main() {
  test('2 + 2 should equal 4', () {
    expect(2 + 2, 4);
  });

  test('String should contain substring', () {
    const message = 'Hello Shorebird!';
    expect(message.contains('Shorebird'), true);
  });
}
