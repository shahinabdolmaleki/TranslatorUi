import 'package:flutter/material.dart';
import 'package:google_translator/google_translator.dart';
import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String apiKey = "f8c1095ad6msh3be4ec30ca7ea49p1e0cedjsn163c4e1e7681";
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleTranslatorInit(apiKey,
        translateFrom: const Locale('en'),
        translateTo: const Locale('pt-br'),
        // automaticDetection: , In case you don't know the user language will want to traslate,
        // cacheDuration: Duration(days: 13), The duration of the cache translation.
        builder: () => const MaterialApp(
            debugShowCheckedModeBanner: false, home: HomePage()));
  }
}
