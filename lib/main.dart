import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:target_management_test_task/ui/pages/kanban_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KPI-Drive Tasks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        textTheme: GoogleFonts.robotoTextTheme(),
        useMaterial3: true,
      ),
      home: const KanbanPage(),
    );
  }
}
