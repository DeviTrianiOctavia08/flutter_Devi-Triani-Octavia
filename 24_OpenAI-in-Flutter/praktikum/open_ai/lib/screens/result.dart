import 'package:flutter/material.dart';
import 'package:open_ai/models/open_ai.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.gptResponseData});

  final GptData gptResponseData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendations'),
        ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Recommendation', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(16), 
            child: Text(
              gptResponseData.choices[0].text, 
              textAlign: TextAlign.justify,
              ),
            )
        ],
      ),
    );
  }
}
