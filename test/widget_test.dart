// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mualim/features/init/presentation/feature.dart';
import 'package:mualim/features/init/presentation/pages/splash_page.dart';

import 'package:mualim/main.dart';

void main() {
  testWidgets('SplashPage displays logo, animates', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        initialRoute: '/',
        routes: {'/': (context) => const SplashPage()},
      ),
    );

    expect(find.byType(Image), findsOneWidget);

    final initialOpacity = tester.widget<Opacity>(find.byType(Opacity)).opacity;
    expect(initialOpacity, closeTo(0.0, 0.1));

    await tester.pump(const Duration(milliseconds: 1500));
    final finalOpacity = tester.widget<Opacity>(find.byType(Opacity)).opacity;
    expect(finalOpacity, closeTo(1.0, 0.1));

    await tester.pumpAndSettle(const Duration(seconds: 2));
  });
}
