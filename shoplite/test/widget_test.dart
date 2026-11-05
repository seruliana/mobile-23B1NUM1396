import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shoplite/main.dart';

void main() {
  testWidgets('Барааг нэмээд, хасаад 0 болгоно', (tester) async {
    await tester.pumpWidget(const ShopLiteApp());

    final addButton = find.widgetWithIcon(FloatingActionButton, Icons.add);
    final removeButton = find.widgetWithIcon(FloatingActionButton, Icons.remove);

    expect(find.text('0'), findsOneWidget);

    await tester.tap(addButton);
    await tester.pump();
    expect(find.text('1'), findsOneWidget);

    await tester.tap(removeButton);
    await tester.pump();
    expect(find.text('0'), findsOneWidget);
    expect(tester.widget<FloatingActionButton>(removeButton).onPressed, isNull);
  });

  testWidgets('10 хүрэхэд нэмэх товч идэвхгүй болж, refresh тэглэнэ', (
    tester,
  ) async {
    await tester.pumpWidget(const ShopLiteApp());

    final addButton = find.widgetWithIcon(FloatingActionButton, Icons.add);
    final limitMessage = find.text(
      'Нэг удаад 10-аас олон бараа захиалах боломжгүй',
    );

    for (var i = 0; i < 10; i++) {
      await tester.tap(addButton);
      await tester.pump();
    }

    expect(find.text('10'), findsOneWidget);
    expect(limitMessage, findsOneWidget);
    expect(tester.widget<FloatingActionButton>(addButton).onPressed, isNull);

    await tester.tap(find.byIcon(Icons.refresh));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
    expect(limitMessage, findsNothing);
    expect(tester.widget<FloatingActionButton>(addButton).onPressed, isNotNull);
  });
}