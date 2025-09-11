import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:shorebird_ci_demo/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('full app flow', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    // تحقق وجود العنوان
    expect(find.text('Shorebird CI Demo'), findsOneWidget);

    // اضغط زر +
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('1'), findsOneWidget);
  });
}
