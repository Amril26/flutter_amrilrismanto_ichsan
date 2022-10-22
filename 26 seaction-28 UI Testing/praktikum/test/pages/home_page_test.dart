import 'package:flutter_test/flutter_test.dart';
import 'package:praktikum/main.dart';

void main() {
  testWidgets('Mengecek title applikasi', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Rest API'), findsOneWidget);
  });
}
