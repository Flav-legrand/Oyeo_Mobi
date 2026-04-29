import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'features/home/presentation/home_page.dart';

class OyeoApp extends StatelessWidget {
  const OyeoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oyéo',
      theme: AppTheme.darkTheme,
      home: const HomePage(),
    );
  }
}
