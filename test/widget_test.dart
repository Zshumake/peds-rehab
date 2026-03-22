import 'package:flutter_test/flutter_test.dart';
import 'package:pediatric_rehab_training/main.dart';

void main() {
  testWidgets('App builds without error', (WidgetTester tester) async {
    await tester.pumpWidget(const PediatricRehabApp());
    expect(find.text('Pediatric Rehab'), findsOneWidget);
  });
}
