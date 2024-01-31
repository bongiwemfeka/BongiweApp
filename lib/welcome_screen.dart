import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'scan_qr_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final List<Slide> slides = [
    Slide(
      title: 'Welcome to Ferranti Toilet Service App',
      description: 'Discover amazing features and benefits.',
      backgroundColor: const Color.fromARGB(255, 45, 131, 48),
    ),
    Slide(
      title: 'Easy to Use',
      description: 'Intuitive and user-friendly interface.',
      backgroundColor: const Color.fromARGB(255, 45, 131, 48),
    ),
    Slide(
      title: 'Scan QR Codes',
      description: 'Quickly Scan toilets using QR codes.',
      backgroundColor: const Color.fromARGB(255, 45, 131, 48),
    ),
  ];

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: IntroSlider(
        slides: slides,
        renderNextBtn: const Text('Next'),
        renderDoneBtn: const Text('Done'),
        onDonePress: () {
          // Navigate to the next screen
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const ScanQRScreen()));
        },
      ),
    );
  }
}
