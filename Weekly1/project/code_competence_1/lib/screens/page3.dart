import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 228, 89, 252), // Ganti warna latar belakang
      padding: const EdgeInsets.all(16.0),
      child: ContactForm(),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Hubungi Kami',
            style: GoogleFonts.poppins(
              fontSize: 24, // Ubah ukuran teks
              color: Colors.white, // Ubah warna teks
              fontWeight: FontWeight.bold, // Tambahkan ketebalan teks
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _firstNameController,
                  decoration: InputDecoration(
                    labelText: 'Nama Depan',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white, // Latar belakang putih
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black, // Warna label teks
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Silakan masukkan nama depan Anda';
                    }
                    return null;
                  },
                  style: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
              const SizedBox(width: 16), // Spacer
              Expanded(
                child: TextFormField(
                  controller: _lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Nama Belakang',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white, // Latar belakang putih
                    labelStyle: GoogleFonts.poppins(
                      color: Colors.black, // Warna label teks
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Silakan masukkan nama belakang Anda';
                    }
                    return null;
                  },
                  style: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white, // Latar belakang putih
              labelStyle: GoogleFonts.poppins(
                color: Colors.black, // Warna label teks
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Silakan masukkan email Anda';
              }
              // Anda dapat menambahkan validasi email di sini
              return null;
            },
            style: GoogleFonts.poppins(color: Colors.black),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _messageController,
            maxLines: 5, // TextArea dengan 5 baris
            decoration: InputDecoration(
              labelText: 'Pesan',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white, // Latar belakang putih
              labelStyle: GoogleFonts.poppins(
                color: Colors.black, // Warna label teks
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Silakan masukkan pesan Anda';
              }
              return null;
            },
            style: GoogleFonts.poppins(color: Colors.black),
          ),
          SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                final firstName = _firstNameController.text;
                final lastName = _lastNameController.text;
                final email = _emailController.text;
                final message = _messageController.text;

                _firstNameController.clear();
                _lastNameController.clear();
                _emailController.clear();
                _messageController.clear();

                // Menampilkan alert dengan data yang dimasukkan pada form
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Data yang Anda Masukkan:'),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Nama Depan: $firstName'),
                          Text('Nama Belakang: $lastName'),
                          Text('Email: $email'),
                          Text('Pesan: $message'),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Menutup dialog
                          },
                          child: Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            child: Text('Kirim'),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 197, 44, 85), // Warna latar belakang tombol
              textStyle: GoogleFonts.poppins(
                fontSize: 18, // Ubah ukuran teks tombol
                color: Color.fromARGB(255, 215, 148, 166), // Warna teks tombol
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

        ],
      ),
    );
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }
}
