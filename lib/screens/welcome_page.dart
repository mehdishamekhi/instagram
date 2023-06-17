import 'package:flutter/material.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage(
            'assets/images/pattern 1.png',
          ),
        ),
      ),
    );
  }
}
