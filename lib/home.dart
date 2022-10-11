import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1F2E),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 300,
                width: 300,
                child: Image.asset(
                  'images/fluttterskills.png',
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: 210,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
