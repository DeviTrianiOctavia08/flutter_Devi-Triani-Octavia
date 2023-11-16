import 'package:flutter/material.dart';
import 'package:mvvm_contact/screen/contact_screen.dart';

import 'package:provider/provider.dart';

import 'screen/contact_view_model.dart';

void main() {
  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => ContactViewModel(),
        child: ContactView(),
      ),
    ),
  );
}


