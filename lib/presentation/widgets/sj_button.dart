import 'package:flutter/material.dart';

enum SjButtonType { filled, outlined }

class SJButton extends StatelessWidget {
  final String text;
  final SjButtonType type;
  const SJButton({
    super.key,
    required this.text,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          backgroundColor:
              type == SjButtonType.filled ? Colors.black : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color:
                    type == SjButtonType.outlined ? Colors.black : Colors.white,
                fontWeight: FontWeight.w800,
              ),
        ),
      ),
    );
  }
}
