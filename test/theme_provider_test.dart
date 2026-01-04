import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cs310sunote/providers/theme_provider.dart';

void main() {
  test('ThemeProvider: prefs\'ten okur, toggle eder ve kaydeder', () async {
    // Başlangıçta dark kayıtlı gibi simüle ediyoruz
    SharedPreferences.setMockInitialValues({'theme_mode': true});

    final provider = ThemeProvider();

    // ThemeProvider constructor içinde async load var; initialized olana kadar bekle
    for (int i = 0; i < 50 && !provider.isInitialized; i++) {
      await Future.delayed(const Duration(milliseconds: 10));
    }

    expect(provider.isInitialized, true);
    expect(provider.isDarkMode, true);

    // Toggle -> light olmalı + prefs'e yazmalı
    await provider.toggleTheme();
    expect(provider.isDarkMode, false);

    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getBool('theme_mode'), false);

    // Tekrar toggle -> dark
    await provider.toggleTheme();
    expect(provider.isDarkMode, true);
    expect(prefs.getBool('theme_mode'), true);
  });
}
