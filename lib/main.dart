import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gestor_de_despesas/screens/splash_screen.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.system, // Alterna entre claro e escuro com base no sistema
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212), // Fundo quase preto
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F), // Fundo da AppBar
          foregroundColor: Colors.white, // Ícones e textos brancos
        ),
        cardTheme: const CardTheme(
          color: Color(0xFF1E1E1E), // Fundo de cards
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF89CFF0), // Azul bebê
          secondary: Color(0xFF89CFF0), // Azul bebê também para elementos secundários
          onPrimary: Colors.white, // Texto em botões/ícones primários
          onSecondary: Colors.white, // Texto em botões/ícones secundários
          surface: Color(0xFF1F1F1F), // Superfícies escuras como cards
          onSurface: Colors.white, // Textos sobre superfícies
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF89CFF0), // Botões com azul bebê
            foregroundColor: Colors.white, // Texto dos botões
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData.dark().textTheme.copyWith(
            bodyMedium: const TextStyle(color: Colors.white), // Textos normais
            titleLarge: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ), // Títulos
          ),
        ),
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white, // Fundo branco
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white, // Fundo da AppBar
          foregroundColor: Color(0xFF121212), // Ícones e textos em cinza escuro
        ),
        cardTheme: const CardTheme(
          color: Color(0xFFF5F5F5), // Fundo claro para cards
          margin: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF89CFF0), // Azul bebê
          secondary: Color(0xFF89CFF0), // Azul bebê também para elementos secundários
          onPrimary: Color(0xFF121212), // Texto em botões/ícones primários
          onSecondary: Color(0xFF121212), // Texto em botões/ícones secundários
          surface: Colors.white, // Superfícies brancas
          onSurface: Color(0xFF121212), // Textos sobre superfícies
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF89CFF0), // Botões com azul bebê
            foregroundColor:  const Color(0xFF121212), // Texto dos botões em cinza escuro
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData.light().textTheme.copyWith(
            bodyMedium: const TextStyle(color: Color(0xFF121212)), // Textos normais
            titleLarge: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xFF121212),
            ), // Títulos
          ),
        ),
      ),
      home: const SplashScreen(),
    ),
  );
}
