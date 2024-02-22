import 'package:flutter/material.dart';
import 'package:open_ai/screens/result.dart';
import 'package:open_ai/services/recommendation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _budgetController = TextEditingController();
  final TextEditingController _cameraController = TextEditingController();
  final TextEditingController _storageController = TextEditingController();
  bool _isLoading = false;

  void _getRecommendation() async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        _isLoading = true;
      });

      try {
        final result = await RecommendationService.getRecommendation(
          budget: _budgetController.text,
          camera: _cameraController.text,
          storage: _storageController.text, strorage: '',
        );

        if (mounted) {
          setState(() {
            _isLoading = false;
          });

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return ResultScreen(gptResponseData: result);
              },
            ),
          );
        }
      } catch (e) {
        print('Error: $e');
        const snackBar = SnackBar(
          content: Text('Failed to send a request. Please try again.'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Recommendation'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _budgetController,
                decoration: InputDecoration(labelText: 'Budget'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid budget';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _cameraController,
                decoration: InputDecoration(labelText: 'Camera (MP)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid camera MP';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _storageController,
                decoration: InputDecoration(labelText: 'Internal Storage'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid internal storage';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: _isLoading
                    ? const Center(child: LinearProgressIndicator())
                    : ElevatedButton(
                        onPressed: () {
                          _getRecommendation();
                        },
                        child: const Text(
                          'Get Recommendation',
                          style: TextStyle(color: Color.fromRGBO(241, 246, 252, 1)),
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
