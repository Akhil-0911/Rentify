import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: TColors.primary, // Primary color from your constants
              padding: const EdgeInsets.all(8),
              child: Stack(
                children: [
                  Container(
                    width: 488,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(480),
                      color: TColors.textWhite
                          .withOpacity(0.8), // Adjust opacity range
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
