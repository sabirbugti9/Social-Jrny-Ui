import 'package:flutter/material.dart';
import 'package:social_jrny_ui/core/themes.dart';

class Memoji extends StatelessWidget {
  final double? size;
  const Memoji({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 120,
      width: size ?? 160,
      decoration: const BoxDecoration(
        color: SJColors.secondary,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border(
          top: BorderSide(width: 3.0, color: SJColors.lemon),
          left: BorderSide(width: 3.0, color: SJColors.lemon),
          right: BorderSide(width: 3.0, color: SJColors.lemon),
          bottom: BorderSide(width: 3.0, color: SJColors.lemon),
        ),
      ),
      child: Image.asset(
        'lib/presentation/images/Memoji.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
