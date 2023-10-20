import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Us',
            style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          ProgramCard(
            programName: 'birthday cake 1',
            programDescription: 'pesan sekarang',
          ),
          ProgramCard(
            programName: 'birthday cake 1',
            programDescription: 'pesan sekarang',
          ),
          ProgramCard(
            programName: 'birthday cake 1',
            programDescription: 'pesan sekarang',
          ),
        ],
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final String programName;
  final String programDescription;

  ProgramCard({
    required this.programName,
    required this.programDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'image/kue1.jpg', 
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  programName,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  programDescription,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
