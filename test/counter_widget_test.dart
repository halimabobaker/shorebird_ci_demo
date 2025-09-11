import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shorebird_ci_demo/main.dart';

void main() {
  testWidgets('Counter increments correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // الرقم الابتدائي
    expect(find.text('0'), findsOneWidget);

    // اضغط زر +
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // الرقم بعد الضغط
    expect(find.text('1'), findsOneWidget);
  });
}
