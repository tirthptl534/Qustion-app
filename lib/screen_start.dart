import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenStart extends StatelessWidget {
  const ScreenStart(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            "Learn Flutter Peacefully!!!!",
            style: GoogleFonts.lato(
                color: const Color.fromARGB(234, 250, 250, 250), fontSize: 24),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(174, 255, 255, 255)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
