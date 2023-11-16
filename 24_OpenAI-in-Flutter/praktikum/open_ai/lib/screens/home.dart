import 'package:flutter/material.dart';
import 'package:open_ai/screens/result.dart';
import 'package:open_ai/services/recommendation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  
  bool isLoading = false;
  TextEditingController budgetcontroller = TextEditingController();
  TextEditingController cameracontroller = TextEditingController();
  TextEditingController stroragecontroller = TextEditingController();
  

  void _getRecommendation() async {
    setState(() {
      isLoading = true;
    });

    try {
      final result = await RecommendationService.getRecommendation(
      budget: budgetcontroller.text,
      camera: cameracontroller.text,
      strorage: stroragecontroller.text,
    );

    if (mounted) {
      setState(() {
        isLoading = false;
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
      const snackBar = SnackBar(
        content: Text('Failed to send a request. Please try again.'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Recommendation'),
      ),
      body: SingleChildScrollView(
       child: Column (
        children: [TextField(controller: budgetcontroller,
        decoration: InputDecoration(labelText: 'Budget'),
        ), TextField(controller: cameracontroller,
        decoration: InputDecoration(labelText: 'Camera (MP)'),
        ), TextField(controller: stroragecontroller,
        decoration: InputDecoration(labelText: 'Internal Strorage'),), 
        SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: isLoading
                          ? const Center(
                              child: LinearProgressIndicator(),
                            )
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
        ]
       ),
      )
    );
  }
}