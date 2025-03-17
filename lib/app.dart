import 'package:flutter/material.dart';

import 'core/themes.dart';
import 'presentation/screens/home_screen.dart';

class SocialJrny extends StatelessWidget {
  const SocialJrny({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Jrny',
      theme: appTheme,
      home: const HomeScreen(),
    );
  }
}
