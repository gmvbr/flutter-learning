import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:currency/data/adapter/api.dart';
import 'package:currency/views/pages/price.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static ThemeData generateTheme(ColorScheme scheme) {
    return ThemeData(
      brightness: scheme.brightness,
      useMaterial3: true,
      colorScheme: scheme,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: scheme.background,
        scrolledUnderElevation: 0,
      ),
      iconTheme: IconThemeData(
        color: scheme.primary,
      ),
      indicatorColor: scheme.primary,
      scaffoldBackgroundColor: scheme.background,
      backgroundColor: scheme.background,
      cardColor: scheme.surface,
      chipTheme: ChipThemeData(backgroundColor: scheme.primaryContainer),
      snackBarTheme: SnackBarThemeData(
        contentTextStyle: GoogleFonts.montserrat().copyWith(
          color: scheme.primary,
        ),
        actionTextColor: scheme.primary,
        backgroundColor: scheme.primaryContainer,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: scheme.background,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: scheme.background,
      ),
      canvasColor: scheme.background,
      fontFamily: GoogleFonts.montserrat().fontFamily,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cotação',
      theme: generateTheme(
        ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: generateTheme(
        ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        ),
      ),
      themeMode: ThemeMode.dark,
      home: PricePage(
        repository: AwesomeAPI(),
      ),
    );
  }
}
