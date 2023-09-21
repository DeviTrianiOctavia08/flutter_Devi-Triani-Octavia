import 'package:flutter/material.dart';

class FlutterForm extends StatefulWidget {
  const FlutterForm({Key? key}) : super(key: key);

@override
_FlutterFormState createState() => _FlutterFormState();
}
 
 class _FlutterFormState extends State<FlutterForm> {
  var formKey = GlobalKey<FormState>();
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Form'),
        ),
        body: Form(
          key: formKey,
           child: Column(
            children: [],
        ),
        ),
      );
  }
}