import 'package:flutter/material.dart';

import 'package:gestor_de_despesas/widgets/expenses.dart';
import 'package:google_fonts/google_fonts.dart'; // Importa o pacote Google Fonts


var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 29, 72, 212),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  //seedColor: const Color.fromARGB(255, 93, 29, 212),
  seedColor: const Color.fromARGB(255, 29, 72, 212),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(        
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme( // Aplica Poppins no tema escuro
          ThemeData.dark().textTheme,
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(  // Aplica a fonte Poppins
          ThemeData().textTheme.copyWith(        // Mantém as customizações existentes
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 16,
            ),
          ),
        ),
      ),
      // themeMode: ThemeMode.system, // default
      home: const Expenses(),
    ),
  );
}