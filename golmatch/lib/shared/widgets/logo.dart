import 'package:flutter/material.dart';
import 'package:golmatch/theme/app_colors.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      elevation: 3,
      child: Container(
        height: 100,
        width: size.width * 0.08,
        decoration: const BoxDecoration(
            color: AppColors.bgSecondayLight,
            image: DecorationImage(image: AssetImage('assets/images/logo.png'))
        ),
      ),
    );
  }
}
