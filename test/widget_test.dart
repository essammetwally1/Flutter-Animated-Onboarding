import 'package:animated_onboarding/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('Initial page loads correctly', (WidgetTester tester) async {
    // Build the HomePage widget wrapped in a MaterialApp.
    await tester.pumpWidget(MaterialApp(home: MyApp()));

    // Verify that the first page is shown (Yosemite National Park title).
    expect(find.text('Yosemite National Park'), findsOneWidget);
    expect(find.text('Golden Gate Bridge'), findsNothing);

    // Swipe to the next page.
    await tester.drag(find.byType(PageView), Offset(-400, 0));
    await tester.pumpAndSettle(); // Wait for the animation to finish.

    // Verify that the second page is now shown (Golden Gate Bridge title).
    expect(find.text('Golden Gate Bridge'), findsOneWidget);
    expect(find.text('Yosemite National Park'), findsNothing);
  });
}