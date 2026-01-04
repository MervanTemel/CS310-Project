import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cs310sunote/screens/welcome_screen.dart';

void main() {
  testWidgets('WelcomeScreen: Login ve Sign Up butonlari dogru sayfaya yonlendirir',
          (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: const WelcomeScreen(),
            routes: {
              '/login': (_) => const _DummyPage(title: 'Login Page'),
              '/signup': (_) => const _DummyPage(title: 'Signup Page'),
            },
          ),
        );

        // Login'e git
        expect(find.text('Login'), findsOneWidget);
        await tester.tap(find.text('Login'));
        await tester.pumpAndSettle();
        expect(find.text('Login Page'), findsOneWidget);

        // Geri dön
        await tester.pageBack();
        await tester.pumpAndSettle();
        expect(find.text('SuNote'), findsOneWidget);

        // Sign Up'a git
        expect(find.text('Sign Up'), findsOneWidget);
        await tester.tap(find.text('Sign Up'));
        await tester.pumpAndSettle();
        expect(find.text('Signup Page'), findsOneWidget);
      });
}

class _DummyPage extends StatelessWidget {
  final String title;
  const _DummyPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title)),
    );
  }
}
