import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storage/contact.dart';
import 'package:storage/page/register.dart';

class Login extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Login({Key? key}) : super(key: key);

  Future<void> _login(
      BuildContext context, String username, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final registeredUsername = prefs.getString('usernameKey');
    final registeredPassword = prefs.getString('passwordKey');

    if (username == registeredUsername && password == registeredPassword) {
      await prefs.setBool('isLoggedKey', true);

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Contact(),
      ));
    } else {
      _showErrorDialog(context, 'Username atau password salah');
    }
  }

  Future<void> _showErrorDialog(BuildContext context, String message) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Login Gagal'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(message),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple[700], // Ganti warna appbar
        centerTitle: true,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Icon(
                Icons.person,
                size: 120,
                color: Colors.deepPurple[700],
              ),
              const SizedBox(height: 40),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  controller: usernameController,
                  style: GoogleFonts.poppins(
                    color: Colors.deepPurple[700], // Ganti warna teks
                  ),
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: GoogleFonts.poppins(color: Colors.deepPurple),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Enter your username',
                    hintStyle: GoogleFonts.poppins(color: Colors.black26),
                    icon: const Icon(
                      Icons.lock_person,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  controller: passwordController,
                  style: GoogleFonts.poppins(
                    color: Colors.deepPurple[700], // Ganti warna teks
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.poppins(color: Colors.deepPurple),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: GoogleFonts.poppins(color: Colors.black26),
                    icon: const Icon(
                      Icons.lock,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: ElevatedButton(
                  onPressed: () {
                    final username = usernameController.text;
                    final password = passwordController.text;
                    _login(context, username, password);
                  },
                  child: Text(
                    'Login',
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple[700], // Ganti warna tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => Register(),
                  ));
                },
                child: Text(
                  'Belum punya akun? Daftar di sini',
                  style: GoogleFonts.poppins(
                    color: Colors.deepPurple[700], // Ganti warna teks
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
